#!/system/bin/sh
#==============================================================================
#
#   File Name: bugtogo.sh
#
#   General Description: This file is used to collect logs for Bug2Go app
#
#==============================================================================
#               Motorola Mobility Confidential Proprietary
#        (c) Copyright Motorola Mobility 2011, All Rights Reserved

#check if a package is installed on the device.
isPackageInstalled(){
    log -p v -t Bug2Go "isPackageInstalled() $1"
    for package in $(/system/bin/pm list packages $1)
    do
        case "$package" in "package:$1")
            return 1
            ;;
        esac
    done
    return 0
}

getSystemProperties(){
    log -p v -t Bug2Go "getSystemProperties()"
    timestamp=`date +'%Y-%m-%d_%H-%M-%S'`
    product=`/system/bin/getprop ro.build.product`
    device=`/system/bin/getprop ro.product.device`
    buildType=`/system/bin/getprop ro.build.type`
    serialNum=`/system/bin/getprop ro.serialno`
    apVersion=`/system/bin/getprop ro.build.display.id`
    case $apVersion in "")
        apVersion=`/system/bin/getprop ro.build.id`
        ;;
    esac
    bpVersion=`/system/bin/getprop gsm.version.baseband`
}

#A shell function checking if a file exists
fileExists(){
    lslines=`/system/bin/ls -l $1`
    for line in $lslines
    do
        return 1
    done
    return 0
}

#parse the configuration file of the Bug2Go app, use default if the
#configuration file is not present
getRequiredSize(){
    log -p v -t Bug2Go "getRequiredSize()"
    fileExists "/data/data/com.motorola.bug2go/files/conf.xml"
    # read the required size from the configuration file if file exists
    case $? in
        "1")
            while read line
            do
                case "$line" in
                    *minimum_memory_size*)
                        line=${line%</*};
                        requiresize_conf=${line#*>};
                ;;
                esac
            done < "/data/data/com.motorola.bug2go/files/conf.xml"
            ;;
        "0")
            log -p d -t Bug2Go  "No req size config, use 20M default"
            requiresize_conf=20
            ;;
    esac
    return $requiresize_conf
}

#returns the available size of a directory in Mb
getAvailableSize(){
    log -p v -t Bug2Go "getAvailableSize() $1"
    dflines=`/system/bin/df $1`
    count=0
    for line in $dflines
    do
        count=$(($count + 1))
        case "$count" in
            #if the first line starts with /data/data, then the available size
            #info should also be in this line.
            "1")
                case "$line" in "$1:")
                    dfline=${dflines% available*}
                    availsize=${dfline#* used, }
                    break;
                ;;
                esac
            ;;
            #if the first line doesn't start with /data/data, then the
            #available size info should be the 4th column in the second line
            "9")
                availsize=$line
                break;
            ;;
        esac
    done

    case "$availsize" in
        *G) availsize=${availsize%G}
            availsize=$(($availsize * 1024))
            ;;
        *M) availsize=${availsize%M};;
        *K) availsize=${availsize%K}
            availsize=$(($availsize / 1024))
            ;;
    esac
    return $availsize
}

isSpaceEnough(){
    log -p v -t Bug2Go "isSpaceEnough() $1 $2"
    getAvailableSize $1
    availsize=$?

    log -p d -t Bug2Go "required: $2 M, available: $availsize M in $1"
    result=$(($availsize - $2))
    case "$result" in
        -*) return 0
        ;;
    esac

    return 1
}

getStoragePath(){
    log -p v -t Bug2Go "getStoragePath() $1"
    isSpaceEnough "/sdcard-ext" $1
    case $? in
    "0")
        isSpaceEnough "/sdcard" $1
        case $? in
        "0")
            isSpaceEnough "/data/data/com.motorola.bug2go" $1
            case $? in
            "0")
                log -p e -t Bug2Go "No available storage"
            ;;
            "1")
                log -p d -t Bug2Go "Storing to /data/data/com.motorola.bug2go/files"
                storagePath="/data/data/com.motorola.bug2go/files"
            ;;
            esac
        ;;
        "1")
            log -p d -t Bug2Go "Storing to /sdcard/bug2go"
            storagePath="/sdcard/bug2go"
        ;;
        esac
    ;;
    "1")
        log -p d -t Bug2Go "Storing to /sdcard-ext/bug2go"
        storagePath="/sdcard-ext/bug2go"
    ;;
    esac
}

addFileIfExists(){
    fileExists $1
    case $? in
        "1")
            logfiles="$logfiles $1"
        ;;
    esac
}

collectLogs(){
    log -p v -t Bug2Go "collectLogs()"
    # Capture the dumpstate (AP state snapshot + log buffers)
    /system/bin/dumpstate > $storagePath/bugreport_$timestamp.txt
    logfiles=$storagePath/bugreport_$timestamp.txt

    addFileIfExists $storagePath/call.log

    #Grab the AOL log files.  Make sure to grab the last two sets of overflow
    #logs too.  After the logs rotate, the most recent always goes to index 0,
    #and all others are shifted up by 1.  So, the last two sets of overflow are
    #always at 0 and 1.
    local aolFiles="\
        log.radio.txt  backup.0.log.radio.txt.gz  backup.1.log.radio.txt.gz\
        log.events.txt backup.0.log.events.txt.gz backup.1.log.events.txt.gz\
        log.system.txt backup.0.log.system.txt.gz backup.1.log.system.txt.gz\
        log.kernel.txt backup.0.log.kernel.txt.gz backup.1.log.kernel.txt.gz\
        log.main.txt   backup.0.log.main.txt.gz   backup.1.log.main.txt.gz"

    #The AOL logs can move around, depending on the USB Mass Storage state and
    #whether the user has an external SD Card inserted or not.  Make sure we
    #look everywhere.
    for file in $aolFiles; do
        addFileIfExists "/sdcard-ext/logger/${file}"
        addFileIfExists "/sdcard/logger/${file}"
        addFileIfExists "/data/logger/${file}"
    done

    #Battery tracer log file
    for file in $(/system/bin/ls  /sdcard/batterytracer/databases/)
    do
        case "$file" in
            *btd) latestBtd="/sdcard/batterytracer/databases/$file";
        ;;
        esac
    done
    logfiles="$logfiles $latestBtd"

    #AP panic log fils
    for file in $(/system/bin/ls /data/dontpanic/)
    do
        paniclogs="$paniclogs /data/dontpanic/$file"
    done
    logfiles="$logfiles $paniclogs"
}

mkdirIfNotExist(){
    log -p v -t Bug2Go "mkdirIfNotExist()"
    fileExists $1
    case $? in
        "0")
            mkdir $1
        ;;
    esac
}

startBug2Go(){
    log -p v -t Bug2Go "startBug2Go()"
    #start the Bug2Go App
    /system/bin/am start -a motorola.intent.action.BUG2GO.START -t "text/plain"
    getSystemProperties
    getRequiredSize
    requiredsize=$?

    getStoragePath $requiredsize
    case $storagePath in
        "")
            log -p e -t Bug2Go "Not enough space"
            #Send error info to the Bug2Go app
            /system/bin/am start -a motorola.intent.action.BUG2GO.ERR -t "text/plain" -e "reqsize" "$requiredsize M" -e "availsize" "$availsize M"
            exit 1
        ;;
    esac
    log -p d -t Bug2Go "Storage path: $storagePath"
    mkdirIfNotExist $storagePath

    collectLogs
    log -p d -t Bug2Go "Logs collected: $logfiles"

    #Forward info to the Bug2Go app
    /system/bin/am start -a motorola.intent.action.BUG2GO.END -t "application/gzip" \
    -e "save_path" "$storagePath" \
    -e "files" "$logfiles" \
    -e "serial" "$serialNum" \
    -e "timestamp" "$timestamp" \
    -e "ap_version" "$apVersion" \
    -e "bp_version" "$bpVersion" \
    -e "timestamp" "$timestamp" \
    -e "product" "$product" \
    -e "device" "$device" \
    -e "build_type" "$buildType"
}

startBug2GoLite(){
    log -p d -t Bug2GoLite "startBug2GoLite()"
    # Start Bug2Go App
    /system/bin/am start -a motorola.intent.action.BUG2GOLITE.START -t "text/plain"

    getSystemProperties

    isSpaceEnough "/sdcard" 10
    case $? in
        0)
            log -p e -t Bug2GoLite "SDcard not present or full, nowhere to store output"
            /system/bin/am start -a motorola.intent.action.BUG2GOLITE.ERR -t "text/plain"
            exit 1
        ;;
        1)
            storagePath="/sdcard/bug2go"
            log -p d -t Bug2GoLite "Storage path: $storagePath"
            mkdirIfNotExist $storagePath
        ;;
    esac

    # Capture the dumpstate (AP state snapshot + log buffers)
    /system/bin/dumpstate > $storagePath/bugreport_$timestamp.txt
    /system/bin/gzip $storagePath/bugreport_$timestamp.txt

    # Forward info to the Bug2Go app
    /system/bin/am start -a motorola.intent.action.BUG2GOLITE.END -t "application/gzip" \
        -e "path" "$storagePath/bugreport_$timestamp.txt.gz" \
        -e "serial" "$serialNum" \
        -e "timestamp" "$timestamp" \
        -e "ap_version" "$apVersion" \
        -e "bp_version" "$bpVersion" \
        -e "timestamp" "$timestamp" \
        -e "product" "$product" \
        -e "device" "$device" \
        -e "build_type" "$buildType"
}

main(){
    log -p d -t Bug2Go "bugtogo.sh started"
    isPackageInstalled "com.motorola.bug2go"
    case $? in
        0)
            isPackageInstalled "com.motorola.bug2golite"
            case $? in
                0)
                    case $(getprop ro.build.type) in
                        user)
                            case $(/system/bin/getprop persist.service.adb.enable) in
                                1)
                                    log -p v -t Bug2Go "Bug2Go.apk=N; Bug2GoLite.apk=N; UserBuild=Y; USBDebug=Y"
                                    startBug2GoLite
                                ;;
                                *)
                                    log -p v -t Bug2Go "Bug2Go.apk=N; Bug2GoLite.apk=N; UserBuild=Y; USBDebug=N"
                                ;;
                            esac
                        ;;
                        *)
                            log -p v -t Bug2Go "Bug2Go.apk=N; Bug2GoLite.apk=N; UserBuild=N"
                            startBug2GoLite
                        ;;
                    esac
                ;;
                1)
                    log -p v -t Bug2Go "Bug2Go.apk=N; Bug2GoLite.apk=Y"
                    startBug2GoLite
                ;;
            esac
        ;;
        1)
            log -p v -t Bug2Go "Bug2Go.apk=Y"
            startBug2Go
        ;;
    esac
    log -p d -t Bug2Go "bugtogo.sh exited"
}

main
