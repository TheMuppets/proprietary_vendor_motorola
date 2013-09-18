#!/system/bin/sh

mode=`getprop ro.bootmode`
case "$mode" in
	"charger")

	echo 0 > /sys/module/pm_8x60/modes/cpu0/power_collapse/idle_enabled
	echo 1 > /sys/devices/system/cpu/cpu1/online
	echo 1 > /sys/devices/system/cpu/cpu2/online
	echo 1 > /sys/devices/system/cpu/cpu3/online
	;;
esac
