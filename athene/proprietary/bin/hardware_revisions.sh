#!/system/bin/sh
#
# Copyright (c) 2013-2016, Motorola LLC  All rights reserved.
#
# The purpose of this script is to compile information about the hardware
# versions of various devices on each unit.  This is useful when searching
# through reported issues for correlations with certain hardware revisions.
# The information is collected from various locations in proc and sysfs (some
# of which are product-specific) and compiled into small, single-line text
# files in the userdata partition, one for each type of device.  The format of
# these lines are as follows:
#
# MOTHREV-vX
# hw_name=XXXXX
# vendor_id=XXXXX
# hw_rev=XXXXX
# date=XXXXX
# lot_code=XXXXX
# fw_rev=XXXXX
# size=XXXXMB
# (components may also add additional fields to the ones above)
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
PATH_STORAGE=/sys/storage
PATH_SDCARD=/sys/block/mmcblk1/device
PATH_TOUCH="/sys/bus/i2c/drivers/"`cd /sys/bus/i2c/drivers && ls */?-*/ic_ver | grep -o .*/`
PATH_DISPLAY=/sys/class/graphics/fb0
PATH_PMIC=/sys/hardware_revisions/pmic

# Product-specific overrides
[ -e /system/etc/hardware_revisions.conf ] && . /system/etc/hardware_revisions.conf

#
# Clear out all revision data in this directory. If in the future we decide
# to remove a component, we want to make sure any old files are not present.
rm /data/hardware_revisions/*

#
# Append one piece of revision data to a given file. If a value is blank,
# then nothing will be written.
#
# $1 - tag
# $2 - value
# $3 - file to write
write_one_revision_data()
{
    if [ -n "${2}" ]; then
        VALUE="${2}"
        echo "${1}=${VALUE}" >> ${3}
    fi
}

#
# Generate the common data contained for
# all hardware peripherals
#
# $1 - file to write to
# $2 - name
# $3 - vendor ID
# $4 - hardware revision
# $5 - date
# $6 - lot code
# $7 - firmware revision
create_common_revision_data()
{
    FILE="${1}"
    echo "MOTHREV-v2" > ${FILE}

    write_one_revision_data "hw_name" "${2}" ${FILE}
    write_one_revision_data "vendor_id" "${3}" ${FILE}
    write_one_revision_data "hw_rev" "${4}" ${FILE}
    write_one_revision_data "date" "${5}" ${FILE}
    write_one_revision_data "lot_code" "${6}" ${FILE}
    write_one_revision_data "fw_rev" "${7}" ${FILE}

}

#
# Applies the appropriate file permissions to the
# hardware revision data file.
#
# $1 - file to write to
apply_revision_data_perms()
{
    chown ${OUT_USR}.${OUT_GRP} "${1}"
    chmod ${OUT_PERM} "${1}"
}

mkdir -p ${OUT_PATH}
chown ${OUT_USR}.${OUT_GRP} ${OUT_PATH}
chmod ${OUT_PATH_PERM} ${OUT_PATH}


#
# Compile ram
#
FILE="${OUT_PATH}/ram"
HNAME=
VEND=
HREV=
DATE=
FREV=
LOT_CODE=
INFO=
SIZE=
if [ -d "${PATH_RAM}" ] ; then
    HNAME=`cat ${PATH_RAM}/type`
    VEND=`cat ${PATH_RAM}/info`
    VEND="${VEND%%:*:*}"
    INFO="$(cat ${PATH_RAM}/mr5),$(cat ${PATH_RAM}/mr6),$(cat ${PATH_RAM}/mr7),\
$(cat ${PATH_RAM}/mr8)"
    SIZE=`cat ${PATH_RAM}/size`
fi
create_common_revision_data "${FILE}" "${HNAME}" "${VEND}" "" "" "" ""
write_one_revision_data "config_info" "${INFO}" "${FILE}"
write_one_revision_data "size" "${SIZE}" "${FILE}"
apply_revision_data_perms "${FILE}"


#
# Compile nvm
#
FILE="${OUT_PATH}/nvm"
HNAME=
VEND=
HREV=
DATE=
FREV=
LOT_CODE=
SIZE=
if [ -d "${PATH_NVM}" ] ; then
    HNAME=`cat ${PATH_NVM}/type`
    if [ -d "${PATH_STORAGE}" ] ; then
        VEND=`cat ${PATH_STORAGE}/vendor`
        SIZE=$((1024 * `cat ${PATH_STORAGE}/size | grep -oE '^[0-9]+'`))
    else
        VEND=`cat ${PATH_NVM}/manfid`
        SIZE=$((1024 * `getprop ro.boot.storage | grep -oE '^[0-9]+'`))
    fi
    HREV=`cat ${PATH_NVM}/name`
    DATE=`cat ${PATH_NVM}/date`
    if [ -e ${PATH_NVM}/device_version -a -e ${PATH_NVM}/firmware_version ] ; then
        FREV="$(cat ${PATH_NVM}/device_version),$(cat ${PATH_NVM}/firmware_version)"
    else
        FREV="$(cat ${PATH_NVM}/hwrev),$(cat ${PATH_NVM}/fwrev)"
    fi
    LOT_CODE="$(cat ${PATH_NVM}/csd)"
else
    if [ -d "${PATH_STORAGE}" ] ; then
        HNAME=`cat ${PATH_STORAGE}/type`
        VEND=`cat ${PATH_STORAGE}/vendor`
        HREV=`cat ${PATH_STORAGE}/model`
        FREV=`cat ${PATH_STORAGE}/fw`
        SIZE=$((1024 * `cat ${PATH_STORAGE}/size | grep -oE '^[0-9]+'`))
    fi
fi
create_common_revision_data "${FILE}" "${HNAME}" "${VEND}" "${HREV}" "${DATE}" "${LOT_CODE}" "${FREV}"
write_one_revision_data "size" "${SIZE}" "${FILE}"
apply_revision_data_perms "${FILE}"


#
# Compile ap
#
FILE="${OUT_PATH}/ap"
HNAME=
VEND=
HREV=
DATE=
FREV=
LOT_CODE=
if [ -e "/proc/cpuinfo" ]; then
    PREVIFS="$IFS"
    IFS="
"
    for CPU in `cat /proc/cpuinfo` ; do
        KEY="${CPU%:*}"
        VAL="${CPU#*: }"
        case "${KEY}" in
            Processor*) HNAME="${VAL}" ;;
            *implementer*) VEND="${VAL}" ;;
            *variant*) HREV="${VAL}" ;;
            *part*) HREV="${HREV},${VAL}" ;;
            *revision*) HREV="${HREV},${VAL}" ;;
        esac
    done
    IFS="$PREVIFS"
fi
create_common_revision_data "${FILE}" "${HNAME}" "${VEND}" "${HREV}" "" "" ""
apply_revision_data_perms "${FILE}"


#
# copy pmic data
#
if [ -e "/sys/hardware_revisions/pmic" ]; then
    cat /sys/hardware_revisions/pmic > ${OUT_PATH}/pmic
else
    create_common_revision_data "${OUT_PATH}/pmic" "" "" "" "" "" ""
fi
apply_revision_data_perms "${OUT_PATH}/pmic"


#
# copy display data
#
FILE="${OUT_PATH}/display"
HNAME=
VEND=
HREV=
if [ -e "${PATH_DISPLAY}" ]; then
    HNAME=`cat ${PATH_DISPLAY}/panel_name`
    VEND=`cat ${PATH_DISPLAY}/panel_supplier`
    HREV=`cat ${PATH_DISPLAY}/panel_ver`
fi

create_common_revision_data "${FILE}" "${HNAME}" "${VEND}" "${HREV}" "" "" ""
apply_revision_data_perms "${FILE}"


#
# Compile touchscreen
#
FILE="${OUT_PATH}/touchscreen"
HNAME=
VEND=
HREV=
DATE=
FREV=
LOT_CODE=
if [ -e "${PATH_TOUCH}/name" ]; then
    HNAME=`cat ${PATH_TOUCH}/name`
    ICVER=`cat -e ${PATH_TOUCH}/ic_ver`
    case "${HNAME}" in
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
            LOT_CODE="${ICVER##*'Config ID: '}"
            LOT_CODE="${LOT_CODE%%\$*}"
            ;;
    esac
fi
create_common_revision_data "${FILE}" "${HNAME}" "${VEND}" "${HREV}" "${DATE}" "${LOT_CODE}" "${FREV}"
apply_revision_data_perms "${FILE}"

