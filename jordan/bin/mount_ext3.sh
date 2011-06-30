#!/system/bin/sh
export PATH=/sbin:/system/xbin:/system/bin
PART_ALIAS=$1
MOUNT_POINT=$2
BLOCK_DEVICE=/dev/block/${PART_ALIAS}

if [ "$1" = "pds" ]; then
	mount -t ext3 -o nosuid,nodev,noatime,nodiratime,barrier=1 ${BLOCK_DEVICE} ${MOUNT_POINT}   #safe mount for pds, don't want experiments with PDS partition. ^)
else 
	mount -t ext3 -o nosuid,nodev,noatime,nodiratime,barrier=0 ${BLOCK_DEVICE} ${MOUNT_POINT}
fi
