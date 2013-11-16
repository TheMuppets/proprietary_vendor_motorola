#!/system/bin/sh
PATH=/sbin:/system/sbin:/system/bin:/system/xbin
export PATH

mode=`getprop ro.bootmode`
case "$mode" in
	"charger")

	echo 1 > /sys/module/rpm_resources/enable_low_power/L2_cache
	echo 1 > /sys/module/rpm_resources/enable_low_power/pxo
	echo 1 > /sys/module/rpm_resources/enable_low_power/vdd_dig
	echo 1 > /sys/module/rpm_resources/enable_low_power/vdd_mem
	echo 1 > /sys/module/pm_8x60/modes/cpu0/retention/idle_enabled
	echo 1 > /sys/module/pm_8x60/modes/cpu1/retention/idle_enabled
	echo 1 > /sys/module/pm_8x60/modes/cpu2/retention/idle_enabled
	echo 1 > /sys/module/pm_8x60/modes/cpu3/retention/idle_enabled
	echo 1 > /sys/module/pm_8x60/modes/cpu0/power_collapse/suspend_enabled
	echo 1 > /sys/module/pm_8x60/modes/cpu1/power_collapse/suspend_enabled
	echo 1 > /sys/module/pm_8x60/modes/cpu2/power_collapse/suspend_enabled
	echo 1 > /sys/module/pm_8x60/modes/cpu3/power_collapse/suspend_enabled
	echo "interactive" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
	echo "interactive" > /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor
	echo "interactive" > /sys/devices/system/cpu/cpu2/cpufreq/scaling_governor
	echo "interactive" > /sys/devices/system/cpu/cpu3/cpufreq/scaling_governor
	echo 0 > /sys/devices/system/cpu/cpu1/online
	echo 0 > /sys/devices/system/cpu/cpu2/online
	echo 0 > /sys/devices/system/cpu/cpu3/online
	echo 1 > /sys/module/pm_8x60/modes/cpu0/standalone_power_collapse/idle_enabled
	echo 1 > /sys/module/pm_8x60/modes/cpu1/standalone_power_collapse/idle_enabled
	echo 1 > /sys/module/pm_8x60/modes/cpu2/standalone_power_collapse/idle_enabled
	echo 1 > /sys/module/pm_8x60/modes/cpu3/standalone_power_collapse/idle_enabled
	echo 1 > /sys/module/pm_8x60/modes/cpu0/power_collapse/idle_enabled

	/system/bin/charge_only_mode

	echo 0 > /sys/module/pm_8x60/modes/cpu0/power_collapse/idle_enabled
	echo 1 > /sys/devices/system/cpu/cpu1/online
	echo 1 > /sys/devices/system/cpu/cpu2/online
	echo 1 > /sys/devices/system/cpu/cpu3/online
	;;
esac
