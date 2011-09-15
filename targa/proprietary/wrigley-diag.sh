#!/system/bin/sh

isBlanFound=0

for iface in `ls /sys/class/net` ; do
    desc=`cat /sys/class/net/$iface/description`
    case $desc in
        "Motorola BLAN Interface")
            echo "Found Motorola BLAN at $iface"
            echo "Forwarding ports for Wrigley diagnostics"
            echo 1 > /proc/sys/net/ipv4/ip_forward;
            /system/bin/iptables -t nat -A PREROUTING -p tcp -i $iface -d 192.168.16.2 --dport 11006 -j DNAT --to 192.168.20.2:11006;
            /system/bin/iptables -A FORWARD -p tcp -i $iface -d 192.168.20.2 --dport 11006 -j ACCEPT;
            isBlanFound=1;
            break
        ;;
        *)
            echo "$iface is not the Motorola BLAN";
            continue
        ;;
    esac
done

case $isBlanFound in 0) echo "Could not find Motorola BLAN";; esac
