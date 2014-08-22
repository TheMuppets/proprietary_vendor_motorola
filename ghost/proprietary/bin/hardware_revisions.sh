#!/system/bin/sh
#
# Copyright (c) 2013, Motorola LLC  All rights reserved.
#
# The purpose of this script is to compile information about the hardware
# versions of various devices on each unit.  This is useful when searching
# through reported issues for correlations with certain hardware revisions.
# The information is collected from various locations in proc and sysfs (some
# of which are product-specific) and compiled into small, single-line text
# files in the userdata partition, one for each type of device.  The format of
# these lines are as follows:
#
# MOTHWREV-vX
# type=XXXXX
# vendor=XXXXX
# hardware-rev=XXXXX
# date-lot-code=XXXXX
# firmware-rev=XXXXX
# extra-info=XXXXX
#
# The extact format of each field will be device-specific, but should be
# consistent across a particular hardware platform. Note that each revision
# data file is rewritten every time this script is called. This ensures that
# any future format changes to the revision files are picked up.
#
# While the method used to read the information should be consistent on a given
# platform, the specific path to a device's information may vary between
# products.  The hardware_revisions.conf file provides a way to adjust those
# paths from the default.
#

export PATH=/system/bin:$PATH

# Output destination and permissions
OUT_PATH=/data/hardware_revisions
OUT_USR=system
OUT_GRP=system
OUT_PERM=0644
OUT_PATH_PERM=0755

# Default paths to hardware information
PATH_RAM=/sys/ram
PATH_NVM=/sys/block/mmcblk0/device
PATH_SDCARD=/sys/block/mmcblk1/device
# Current 8960 touchsceen is only on i2c-3 bus
PATH_TOUCH=`ls -d /sys/bus/i2c/devices/3-*`
PATH_DISPLAY=/sys/hardware_revisions/display
PATH_PMIC=/sys/hardware_revisions/pmic

# Product-specific overrides
[ -e /system/etc/hardware_revisions.conf ] && . /system/etc/hardware_revisions.conf


#
# Append one piece of revision data to a given file. If a value is blank,
# then "NOT_APPLICABLE" is written.
#
# $1 - tag
# $2 - value
# $3 - file to write
write_one_revision_data()
{
    if [ -z "${2}" ]; then
        VALUE=NOT_APPLICABLE
    else
        VALUE="${2}"
    fi

    echo "${1}=${VALUE}" >> ${3}
}

#
# Generate a hardware revision file
#
# $1 - name
# $2 - type
# $3 - vendor ID
# $4 - hardware revision
# $5 - date/lot code
# $6 - firmware revision
# $7 - extra information
create_revision_data()
{
    FILE="${OUT_PATH}/${1}"

    echo "MOTHWREV-v1" > ${FILE}

    write_one_revision_data "type" "${2}" ${FILE}
    write_one_revision_data "vendorID" "${3}" ${FILE}
    write_one_revision_data "hardware-rev" "${4}" ${FILE}
    write_one_revision_data "date-lot-code" "${5}" ${FILE}
    write_one_revision_data "firmware-rev" "${6}" ${FILE}
    write_one_revision_data "extra-info" "${7}" ${FILE}

    chown ${OUT_USR}.${OUT_GRP} ${FILE}
    chmod ${OUT_PERM} ${FILE}
}

mkdir -p ${OUT_PATH}
chown ${OUT_USR}.${OUT_GRP} ${OUT_PATH}
chmod ${OUT_PATH_PERM} ${OUT_PATH}


#
# Compile ram
#
if [ -d "${PATH_RAM}" ] ; then
    TYPE=`cat ${PATH_RAM}/type`
    VEND=`cat ${PATH_RAM}/info`
    VEND="${VEND%%:*:*}"
    INFO="$(cat ${PATH_RAM}/mr5),$(cat ${PATH_RAM}/mr6),$(cat ${PATH_RAM}/mr5),\
$(cat ${PATH_RAM}/mr5)"
    create_revision_data "ram" "${TYPE}" "${VEND}" "" "" "" "${INFO}"
fi


#
# Compile nvm
#
if [ -d "${PATH_NVM}" ] ; then
    TYPE=`cat ${PATH_NVM}/type`
    VEND=`cat ${PATH_NVM}/manfid`
    HREV=`cat ${PATH_NVM}/name`
    DATE=`cat ${PATH_NVM}/date`
    FREV="$(cat ${PATH_NVM}/hwrev),$(cat ${PATH_NVM}/fwrev)"
    INFO="$(cat ${PATH_NVM}/cid),$(cat ${PATH_NVM}/csd)"
    create_revision_data "nvm" "${TYPE}" "${VEND}" "${HREV}" "${DATE}" "${FREV}" "${INFO}"
fi


#
# Compile sdcard
#
if [ -d "${PATH_SDCARD}" ] ; then
    TYPE=`cat ${PATH_SDCARD}/type`
    VEND=`cat ${PATH_SDCARD}/manfid`
    HREV=`cat ${PATH_SDCARD}/name`
    DATE=`cat ${PATH_SDCARD}/date`
    FREV="$(cat ${PATH_SDCARD}/hwrev),$(cat ${PATH_SDCARD}/fwrev)"
    INFO="$(cat ${PATH_SDCARD}/cid),$(cat ${PATH_SDCARD}/csd)"
    create_revision_data "sdcard" "${TYPE}" "${VEND}" "${HREV}" "${DATE}" "${FREV}" "${INFO}"
fi


#
# Compile ap
#
if [ -e "/proc/cpuinfo" ]; then
    TYPE=
    VEND=
    HREV=
    INFO=
    PREVIFS="$IFS"
    IFS="
"
    for CPU in `cat /proc/cpuinfo` ; do
        KEY="${CPU%:*}"
        VAL="${CPU#*: }"
        case "${KEY}" in
            Processor*) TYPE="${VAL}" ;;
            *implementer*) VEND="${VAL}" ;;
            *variant*) HREV="${VAL}" ;;
            *part*) HREV="${HREV},${VAL}" ;;
            *revision*) HREV="${HREV},${VAL}" ;;
            *Serial*) INFO="${VAL}" ;;
        esac
    done
    IFS="$PREVIFS"
    create_revision_data "ap" "${TYPE}" "${VEND}" "${HREV}" "" "" "${INFO}"
fi

#
# copy pmic data
#
if [ -e "/sys/hardware_revisions/pmic" ]; then
    cat /sys/hardware_revisions/pmic > ${OUT_PATH}/pmic
    chown ${OUT_USR}.${OUT_GRP} ${OUT_PATH}/pmic
    chmod ${OUT_PERM} ${OUT_PATH}/pmic
fi

#
# copy display data
#
if [ -e /sys/hardware_revisions/display ]; then
    cat /sys/hardware_revisions/display > ${OUT_PATH}/display
    chown ${OUT_USR}.${OUT_GRP} ${OUT_PATH}/display
    chmod ${OUT_PERM} ${OUT_PATH}/display
fi

#
# Compile touchscreen
#
if [ -e "${PATH_TOUCH}/name" ]; then
    VEND=
    HREV=
    DATE=
    FREV=
    INFO=
    TYPE=`cat ${PATH_TOUCH}/name`
    ICVER=`cat -e ${PATH_TOUCH}/ic_ver`
    case "${TYPE}" in
        melfas*)
            VEND="Melfas"
            HREV="${ICVER##*'HW Revision:'}"
            HREV="${HREV%%\$*}"
            FREV="${ICVER##*'Core FW ver:'}"
            FREV="${FREV%%\$*}"
            ;;
        cyttsp*)
            VEND="${ICVER##*'Custom ID:'}"
            VEND="${VEND%%\$*}"
            VEND="Cypress,${VEND}"
            HREV="${ICVER##*'TTSP Version:'}"
            HREV="${HREV%%\$*}"
            FREV="${ICVER##*'Application Version:'}"
            FREV="${FREV%%\$*}"
            ;;
        atmxt*)
            VEND="Atmel"
            HREV="${ICVER##*'Family ID:'}"
            HREV1="${ICVER##*'Variant ID:'}"
            HREV="${HREV%%\$*},${HREV1%%\$*}"
            FREV="${ICVER##*'Version:'}"
            FREV1="${ICVER##*'Build:'}"
            FREV="${FREV%%\$*},${FREV1%%\$*}"
            ;;
        synaptics*)
            VEND="${ICVER##*'Product ID: '}"
            VEND="${VEND%%\$*}"
            FREV="${ICVER##*'Build ID: '}"
            FREV="${FREV%%\$*}"
            INFO="${ICVER##*'Config ID: '}"
            INFO="${INFO%%\$*}"
            ;;
        *)
            INFO="not supported by current version $0"
            ;;
    esac
    create_revision_data "touchscreen" "${TYPE}" "${VEND}" "${HREV}" "${DATE}" "${FREV}" "${INFO}"
fi

