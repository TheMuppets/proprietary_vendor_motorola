#!/system/bin/sh
export PATH=/system/bin:$PATH
PART_ALIAS=$1
MOUNT_POINT=$2
BLOCK_DEVICE=/dev/block/${PART_ALIAS}
UNPACK_IMAGE=/system/${PART_ALIAS}.img.gz

if [ -e ${BLOCK_DEVICE} ]; then
    if [ -e ${UNPACK_IMAGE} ]; then
        echo "found compressed image to unpack: ${UNPACK_IMAGE}"
        cat ${UNPACK_IMAGE} | gzip -d | dd of=${BLOCK_DEVICE} bs=131072
        ret=$?
        if [ $ret -eq 0 ]; then
            mount -t ext3 -o remount,rw /dev/block/system /system
            echo "image unpack done, removing image from system"
            rm ${UNPACK_IMAGE}
            ret=$?
            if [ ${ret} -ne 0 ]; then
                echo "failed to remove ${UNPACK_IMAGE}, error ${ret}"
            fi
            mount -t ext3 -o remount,ro /dev/block/system /system
        else
            echo "image unpack failed: ${ret}"
            exit
        fi
    else
        /system/bin/dumpe2fs -h ${BLOCK_DEVICE}
        ret=$?
        if [ $ret -eq 0 ];then
            e2fsck -p ${BLOCK_DEVICE}
            ret=$?
            if [ $ret -gt 1 ];then
                echo "issues with e2fsck ret = $ret"
            fi
        else
            mke2fs -m 0 -j -L ${PART_ALIAS} ${BLOCK_DEVICE}
            ret=$?
            if [ $ret -eq 0 ];then
                echo "${PART_ALIAS} partition formatted"
            else
                echo "${PART_ALIAS} partition format failed"
                exit
            fi
        fi
    fi
    mount -t ext3 -o nosuid,nodev,noatime,nodiratime,barrier=1 ${BLOCK_DEVICE} ${MOUNT_POINT}
fi
