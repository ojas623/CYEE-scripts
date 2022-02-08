@echo off
setlocal enabledelayedexpansion
net session

rem setting audit policy
auditpol /set /category:* /success:enable
auditpol /set /category:* /failure:enable

pause
exit