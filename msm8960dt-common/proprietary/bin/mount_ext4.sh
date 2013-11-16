#!/system/bin/sh
export PATH=/system/bin:$PATH
PART_ALIAS=$1
BLOCK_DEVICE=$2
MOUNT_POINT=$3
UNPACK_IMAGE=/system/${PART_ALIAS}.img.gz
MOUNT_FLAGS="nosuid,nodev,noatime,nodiratime,barrier=1"

# Check for optional block size
if [ $# -gt 3 ]; then
    BLOCK_SIZE=$4
    BLOCK_OPT="-b ${BLOCK_SIZE}"
else
    BLOCK_OPT=""
fi

# Wait for device to exist
for i in 1 2 3 4 5 6 7 8 9 10
do
    if [ -e ${BLOCK_DEVICE} ]; then
        break;
    else
        echo "Waiting for ${BLOCK_DEVICE}"
        sleep 1
        fi
    endif
done


if [ -e ${BLOCK_DEVICE} ]; then
    if [ -e ${UNPACK_IMAGE} ]; then
        echo "found compressed image to unpack: ${UNPACK_IMAGE}"
        cat ${UNPACK_IMAGE} | gzip -d | dd of=${BLOCK_DEVICE} bs=131072
        ret=$?
        if [ $ret -eq 0 ]; then
            mount -t ext4 -o remount,rw /dev/block/system /system
            echo "image unpack done, removing image from system"
            rm ${UNPACK_IMAGE}
            ret=$?
            if [ ${ret} -ne 0 ]; then
                echo "failed to remove ${UNPACK_IMAGE}, error ${ret}"
            fi
            mount -t ext4 -o remount,ro /dev/block/system /system
        else
            echo "image unpack failed: ${ret}"
            exit
        fi
    else
        mount -t ext4 -o ${MOUNT_FLAGS} ${BLOCK_DEVICE} ${MOUNT_POINT}
        ret=$?
        if [ $ret -ne 0 ]; then
            # TODO: It would be more polite to try fsck first.
            echo "Problem mounting, formatting device.  make_ext4fs ${BLOCK_OPT} ${BLOCK_DEVICE}"
            make_ext4fs ${BLOCK_OPT} ${BLOCK_DEVICE}
            ret=$?
            if [ $ret -eq 0 ]; then
                echo "${PART_ALIAS} partition formatted"
            else
                echo "${PART_ALIAS} partition format failed"
            fi
            mount -t ext4 -o ${MOUNT_FLAGS} ${BLOCK_DEVICE} ${MOUNT_POINT}
        fi
    fi
fi
