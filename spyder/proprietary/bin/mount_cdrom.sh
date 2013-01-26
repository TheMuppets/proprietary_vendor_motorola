#!/system/bin/sh
CDROM_BLK_DEV=$1
CDROM_MOUNT_DIR=/cdrom
CDROM_INFO_FILE=cdinfo
SM_VERSION_FILE=/sys/class/android_usb/android0/smversion

if [ -e "$CDROM_BLK_DEV" ];
then
    echo "CDROM block device exists"
else
    echo "No CDROM block device"
    return
fi

if [ -d "$CDROM_MOUNT_DIR" ];
then
    echo "CDROM mount fold exists"
else
    echo "No CDROM mount folder"
    return
fi

echo "mount cdrom"

`mount -t iso9660 "$CDROM_BLK_DEV" "$CDROM_MOUNT_DIR"`

if [ -f "$CDROM_MOUNT_DIR/$CDROM_INFO_FILE" ];
then
    echo "cdinfo file exists"
else
    echo "No cdinfo file"
    `umount "$CDROM_MOUNT_DIR"`
    return
fi

if [ -w "$SM_VERSION_FILE" ];
then
    echo "smversion file exists"
else
    echo "No smversion file"
    `umount "$CDROM_MOUNT_DIR"`
    return
fi

`cat $CDROM_MOUNT_DIR/$CDROM_INFO_FILE > $SM_VERSION_FILE`
`umount "$CDROM_MOUNT_DIR"`

echo "finish write version info"



