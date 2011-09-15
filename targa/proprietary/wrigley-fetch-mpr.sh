#!/system/bin/sh

mprTempDir="$1"
case $mprTempDir in
    "") echo "Usage: $0 <destination dir>"; exit 1;;
esac

# Don't waste time trying to dump logs for a device that doesn't exist.
isWrigleyFound=0
for dev in $(ls /sys/bus/usb/devices); do
    case $(cat /sys/bus/usb/devices/$dev/product 2>/dev/null) in
    "Motorola LTE Datacard")
        isWrigleyFound=1
        break
    ;;
    esac
done
case $isWrigleyFound in 0) echo "Skipping dump for non-existent Wrigley"; exit 1;; esac

# Specify a timeout to netcat to ensure we don't hang forever on BP panics.  The
# -w option in netcat is used both as a connect timeout and a timeout on the
# main select() loop when doing reads and writes.  Use a value that is not
# likely to false-positive, but also provides adequate protection against
# hanging for a long time.
for cmd in "state" "-d logs" "files" "-d panic" "atvc"; do
    echo "$cmd" | nc -w 10 192.168.20.2 3002 | extract-embedded-files -o "$mprTempDir"
done
