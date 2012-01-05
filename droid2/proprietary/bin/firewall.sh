#!/system/bin/sh

myipt `getprop service.motorola.firewall`
rm `getprop service.motorola.firewall`
setprop service.motorola.firewall ""
