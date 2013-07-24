#!/system/bin/sh
export PATH=/system/bin:$PATH

# Install STE MID Safe OMAP Padconf Driver
if [ -e /system/lib/modules/mid_safecontrol.ko ]; then
	insmod /system/lib/modules/mid_safecontrol.ko 
fi

