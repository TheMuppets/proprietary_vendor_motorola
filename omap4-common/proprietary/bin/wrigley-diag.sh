#!/system/bin/sh

# Enable IP forwarding so the Wrigley can talk to diagnostics utilities
# running on an attached host machine (typically Windows).
echo 1 > /proc/sys/net/ipv4/ip_forward
# We must also set ro.allow.ip.fwd=1 to prevent
# system/netd/TetherController.cpp from setting this back to 0.
setprop ro.allow.ip.fwd 1
