#!/system/bin/sh
export PATH=/system/bin:$PATH
PRELOAD_APP_DIR=/system/preinstall/app
PRELOAD_HASH_DIR=/system/preinstall/md5
DATA_HASH_DIR=/data/preinstall_md5
PRELOAD_DONE_PROP=preinstall.done
PRELOAD_LOG_FILE=$DATA_HASH_DIR/log.txt

mkdir $DATA_HASH_DIR

for file in `ls $PRELOAD_APP_DIR`; do
    echo "$file: comparing $PRELOAD_HASH_DIR/$file.md5 and $DATA_HASH_DIR/$file.md5"
    echo "$file: comparing $PRELOAD_HASH_DIR/$file.md5 and $DATA_HASH_DIR/$file.md5" >> $PRELOAD_LOG_FILE
    newMD5=`cat $PRELOAD_HASH_DIR/$file.md5`
    oldMD5=`cat $DATA_HASH_DIR/$file.md5`
    if [ "$newMD5" != "$oldMD5" ]; then
        isInstalled=`pm path $file`
        if [ -n "$isInstalled" -o ! -e "$DATA_HASH_DIR/$file.md5" ]; then
            if [ $file = "com.ideaworks3d.nfsshift" ]; then
                rm -r /data/data/com.ideaworks3d.nfsshift
            fi
            pm install -r $PRELOAD_APP_DIR/$file
            ret=$?
            if [ $ret -ne 0 ]; then
                echo "$file: install failed, error: $ret"
                echo "$file: install failed, error: $ret" >> $PRELOAD_LOG_FILE
            else
                echo "$file: install successful, copying $file.md5 to $DATA_HASH_DIR"
                echo "$file: install successful, copying $file.md5 to $DATA_HASH_DIR" >> $PRELOAD_LOG_FILE
                cp $PRELOAD_HASH_DIR/$file.md5 $DATA_HASH_DIR
            fi
        else
            echo "$file: user has uninstalled, dont reinstall. copying $file.md5 to $DATA_HASH_DIR"
            echo "$file: user has uninstalled, dont reinstall. copying $file.md5 to $DATA_HASH_DIR" >> $PRELOAD_LOG_FILE
            cp $PRELOAD_HASH_DIR/$file.md5 $DATA_HASH_DIR
        fi
    else
        echo "$file: install skipped, file unchanged"
        echo "$file: install skipped, file unchanged" >> $PRELOAD_LOG_FILE
    fi
done

retries=10
echo "preinstall finished, setting $PRELOAD_DONE_PROP to 1"
echo "preinstall finished, setting $PRELOAD_DONE_PROP to 1" >> $PRELOAD_LOG_FILE
setprop $PRELOAD_DONE_PROP 1
readback=`getprop $PRELOAD_DONE_PROP`
while [ "$readback" != "1" -a $retries -gt 0 ]
do
    echo "  property readback failed! expected 1, got $readback. retries left $retries..."
    echo "  property readback failed! expected 1, got $readback. retries left $retries..." >> $PRELOAD_LOG_FILE
    retries=$(($retries-1))
    sleep 2
    setprop $PRELOAD_DONE_PROP 1
    readback=`getprop $PRELOAD_DONE_PROP`
done

echo "preinstall exiting..."
echo "preinstall exiting..." >> $PRELOAD_LOG_FILE
