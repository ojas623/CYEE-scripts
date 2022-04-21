@echo off
setlocal enabledelayedexpansion
net session

echo "setting audit policy..."
auditpol /set /category:* /success:enable
auditpol /set /category:* /failure:enable

pause
echo "audit policy set."
