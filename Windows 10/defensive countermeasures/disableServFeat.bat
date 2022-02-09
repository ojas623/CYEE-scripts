@echo off
setlocal enabledelayedexpansion
net session

echo "disabling insecure services and features..."
sc config tlntsvr start= disabled
echo "telnet disabled"

sc config wkssvc start= disabled
echo "wkssvc disabled"
