#!/system/bin/sh

echo "Dumping Motorola Multi-Modem Logs"
echo "I am running as $(id)"

echo "===== Wrigley Section ====="
wrigley-dump.sh

echo "===== QCOM Section ====="
qbp-dump.sh
