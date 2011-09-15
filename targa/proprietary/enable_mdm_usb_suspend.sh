#!/system/bin/sh
echo on > /sys/devices/platform/ohci-omap3/usb2/power/control
/system/bin/sleep 20
echo auto > /sys/devices/platform/ohci-omap3/usb2/2-1/power/control
echo auto > /sys/devices/platform/ohci-omap3/usb2/power/control
echo "Enabled MDM USB auto suspend"
