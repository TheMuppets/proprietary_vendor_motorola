#! /vendor/bin/sh

#
# Copyright (c) 2019 Qualcomm Technologies, Inc.
# All Rights Reserved.
# Confidential and Proprietary - Qualcomm Technologies, Inc.
#
# Copyright (c) 2019 The Linux Foundation. All rights reserved.
#

export PATH=/vendor/bin

prefix="/sys/class/"
#List of folder for ownership update
arr=( "power_supply/battery/" "power_supply/usb/" "power_supply/main/" "power_supply/charge_pump_master/" "power_supply/pc_port/" "power_supply/dc/" "power_supply/bms/" "power_supply/parallel/" "usbpd/usbpd0/" "qc-vdm/" "charge_pump/" "qcom-battery/" )
for i in "${arr[@]}"
do
    for j in `ls "$prefix""$i"`
    do
        #skip directories to prevent possible security issues.
        if [[ -d "$prefix""$i""$j" ]]
        then
            continue
        else
            chown -h system.system "$prefix""$i""$j"
        fi
    done
done
setprop persist.vendor.hvdcp_opti.start 1
