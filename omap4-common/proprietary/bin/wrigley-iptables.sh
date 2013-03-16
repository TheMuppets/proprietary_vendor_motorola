#!/system/bin/sh

#### DESCRIPTION ####
# This script sets up any static iptables rules required for the Wrigley.  For
# this to work, we require hooks in system/netd/ to jump to a special "oem"
# chain for any tables/chains we want to modify.

# NOTE: This script is called every time the netd service is started.  To
# handle the case where netd has crashed/stopped and is restarted, attempt to
# flush any chains we create before adding to them; this will avoid duplicate
# rules.  We don't attempt to delete our additions to the base "hook" chains,
# because that's netd's job.  So, for each sub-chain we create in here, we do
# -N (new) to handle the case where we've never been called before, and we do
# -F (flush) to handle the case where we have been called before.  Both no-op
# gracefully.

# NOTE: The firewalling rules done in here for protecting specific ports from
# unauthorized access are necessary for security, but should be replaced by a
# connection-based authentication scheme instead.  By using iptables, we are
# creating compatibility issues with Google's Ice Cream Sandwich, and are
# adding unnecessary latency to all packets that go through Netfilter.  If it
# were not for the current implementation, we would only need a hook in the
# nat/PREROUTING chain, and the hooks in filter/OUTPUT & filter/FORWARD could
# go away.
# TODO: Implement a connection-based auth scheme for Wrigley control and
# TODO: diagnostics ports.

# NOTE: Our usage of the static 192.168.157.0/24 for the Wrigley IP address can
# cause conflicts with DHCP-assigned WiFi addresses.  When coupled with the
# firewall below, this ensures that WiFi will not work if we get assigned an
# address in that range.
# TODO: Find a way to blacklist the range above in the WiFi driver, so that we
# TODO: reject attempts from a WiFi AP to assign anything in that range to us.

IPTABLES="/system/bin/iptables"

#### filter OUTPUT ####
# Setup an explicit sub-chain for 192.168.157.2.  This way we only burden all
# other packets with a single check for the IP address.
$IPTABLES -F oem_out_wrigley # No-op on 1st inst of this script
$IPTABLES -N oem_out_wrigley # No-op on 2nd-Nth inst of this script
$IPTABLES -A oem_out -d 192.168.157.2 -j oem_out_wrigley

# Setup diff rules for sensitive ports vs other ports.  There are more
# non-sensitive than sensitive ports, and the non-sensitive list is fairly
# dynamic.  So, do a blacklist instead of a whitelist.
$IPTABLES -F oem_out_wrigley_sens # No-op on 1st inst of this script
$IPTABLES -F oem_out_wrigley_other # No-op on 1st inst of this script
$IPTABLES -N oem_out_wrigley_sens # No-op on 2nd-Nth inst of this script
$IPTABLES -N oem_out_wrigley_other # No-op on 2nd-Nth inst of this script
$IPTABLES -A oem_out_wrigley -p tcp --dport 3265 -j oem_out_wrigley_sens
$IPTABLES -A oem_out_wrigley -p tcp --dport 3267 -j oem_out_wrigley_sens
$IPTABLES -A oem_out_wrigley -p tcp --dport 11000 -j oem_out_wrigley_sens
$IPTABLES -A oem_out_wrigley -j oem_out_wrigley_other

# Sensitive ports only allow root, radio and mot_tcmd to access them.
$IPTABLES -A oem_out_wrigley_sens -m owner --uid-owner 0 -j ACCEPT
$IPTABLES -A oem_out_wrigley_sens -m owner --uid-owner 1001 -j ACCEPT
$IPTABLES -A oem_out_wrigley_sens -m owner --uid-owner 9004 -j ACCEPT
$IPTABLES -A oem_out_wrigley_sens -j REJECT

# Other ports allow root, radio, log, shell, and mot_tcmd to access them.
$IPTABLES -A oem_out_wrigley_other -m owner --uid-owner 0 -j ACCEPT
$IPTABLES -A oem_out_wrigley_other -m owner --uid-owner 1001 -j ACCEPT
$IPTABLES -A oem_out_wrigley_other -m owner --uid-owner 1007 -j ACCEPT
$IPTABLES -A oem_out_wrigley_other -m owner --uid-owner 2000 -j ACCEPT
$IPTABLES -A oem_out_wrigley_other -m owner --uid-owner 9004 -j ACCEPT
$IPTABLES -A oem_out_wrigley_other -j REJECT

#### filter FORWARD ####
# We only want forwarding in BP Tools Mode.
case $(getprop ro.bootmode) in
bp-tools)
    # Only allow forwarding on non-sensitive ports.  There are more
    # non-sensitive than sensitive ports, and the non-sensitive list is fairly
    # dynamic.  So, do a blacklist instead of a whitelist.
    $IPTABLES -F oem_fwd_wrigley # No-op on 1st inst of this script
    $IPTABLES -N oem_fwd_wrigley # No-op on 2nd-Nth inst of this script
    $IPTABLES -A oem_fwd -d 192.168.157.2 -j oem_fwd_wrigley
    $IPTABLES -A oem_fwd -s 192.168.157.2 -j oem_fwd_wrigley
    $IPTABLES -A oem_fwd_wrigley -p tcp --dport 3265 -j REJECT
    $IPTABLES -A oem_fwd_wrigley -p tcp --dport 3267 -j REJECT
    $IPTABLES -A oem_fwd_wrigley -p tcp --dport 11000 -j REJECT
    $IPTABLES -A oem_fwd_wrigley -j ACCEPT
    ;;
*)
    $IPTABLES -A oem_fwd -d 192.168.157.2 -j REJECT
    ;;
esac

#### nat PREROUTING ####
case $(getprop ro.bootmode) in
bp-tools)
    # We must rewrite the destination address for our SUAPI logger port to the
    # address of the BLAN, because legacy tools (RTA/PST) rely on this.
    $IPTABLES -t nat -A oem_nat_pre -p tcp -d 192.168.16.2 --dport 11006 -j DNAT --to 192.168.157.2:11006
    ;;
esac
