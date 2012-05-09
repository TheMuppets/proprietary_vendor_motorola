#!/system/bin/sh

# Get environment & status info
timestamp=`date +'%Y-%m-%d_%H-%M-%S'`
product=`/system/bin/getprop ro.build.product`
device=`/system/bin/getprop ro.product.device`
buildType=`/system/bin/getprop ro.build.type`
serialNum=`/system/bin/getprop ro.ril.barcode`
apDescrip=`/system/bin/getprop ro.build.description`
bpVersion=`/system/bin/getprop gsm.version.baseband`
emailAddress=`/system/bin/getprop debug.bugtogo.email`
storagePath="/sdcard/bugreports"

case $emailAddress in
    "") emailAddress="none";
    ;;
esac

# Create the storage directory (ignore failure)
mkdir -p $storagePath
chown root.sdcard_rw $storagePath

# Capture the dumpstate (AP state snapshot + log buffers)
/system/bin/dumpstate -o $storagePath/bugreport_$timestamp -b /system/media/audio/ui/Dock.ogg -e /system/media/audio/ui/Undock.ogg

# gzip, because the LTE logs can get very big
/system/bin/gzip $storagePath/bugreport_$timestamp.txt

# Fix the permissions so Java can access it
chown root.sdcard_rw $storagePath/bugreport_$timestamp.txt.gz

# Forward info to the BugToGo app
/system/bin/am start -a motorola.intent.action.BUGTOGO -t "application/gzip" \
    -e "path" "$storagePath/bugreport_$timestamp.txt.gz" \
    -e "serial" "$serialNum" \
    -e "timestamp" "$timestamp" \
    -e "ap_version" "$apDescrip" \
    -e "bp_version" "$bpVersion" \
    -e "timestamp" "$timestamp" \
    -e "product" "$product" \
    -e "device" "$device" \
    -e "build_type" "$buildType" \
    -e "emailaddr" "$emailAddress" \
    -f 0x14000000

