#!/system/bin/sh
export PATH="${PATH}:/system/bin"

# constants
MODE_PROP="mot.ste.modem.mode"
TTYDEVICE_PROP="ro.mot.ste.modem.ttydevice"
GADGET_TTY=/dev/ttyGS0
boot_mode=`getprop ro.bootmode`

if [ "${boot_mode}" = "bp-tools" ]; then
	GADGET_TTY=/dev/ttyGS1
fi

# check command line usage
if [ ${#} -eq 1 ]; then
	MODE="${1}"
fi

# get the tty device for this hardware
TTY_DEVICE="$(getprop ${TTYDEVICE_PROP})"

# start the correct atrelay service based on the modem's mode
if [ "${MODE}" = "service" ]; then
	Z_PROT="-z"
	MODEM_END_POINT="-m TTY -x ${TTY_DEVICE} -y 9600,n,8,1,off"
elif [ "${MODE}" = "itp" ]; then
	Z_PROT=""
	MODEM_END_POINT="-m TTY -x ${TTY_DEVICE} -y 115200,n,8,1,off"
elif [ "${MODE}" = "signaling" ]; then
	Z_PROT=""
	# Default is CAIF AT channel
	MODEM_END_POINT=""
else
	echo "usage: ${0} [signaling|itp|service]"
	exit 2
fi

# build complete command string
ATRELAY_CMD="/system/bin/bridge_relay ${Z_PROT} \
-i TTY -p ${GADGET_TTY} -s 9600,n,8,1,off ${MODEM_END_POINT} -U radio";

# setup modem mode property
echo "setting ${MODE_PROP}=${MODE}"
setprop "${MODE_PROP}" "${MODE}"

# launch atrelay command
echo "starting '${ATRELAY_CMD}'"
exec ${ATRELAY_CMD}
exit 4

