#!/system/bin/sh

# Ugh!, why doesn't busybox's cp have a -n option?  I hate adb shell scripting...

bb="/system/bin/busybox"

for sysd in $(cd /system; $bb find local/12m -type d); do
    datad="/data/$sysd"
    if $bb [ ! -d $datad ]; then
        $bb mkdir -p $datad
    fi
done

for sysf in $(cd /system; $bb find local/12m -type f); do
    dataf="/data/$sysf"
    if $bb [ ! -e $dataf ]; then
        $bb cp /system/$sysf $dataf
    fi
done
