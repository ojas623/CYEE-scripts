@echo off
setlocal enabledelayedexpansion
net session

if %errorlevel%==0 (
	echo Admin rights granted!
   )
   else (
    echo Failure, no rights
	pause
    exit
)


echo "setting audit policy..."
auditpol /set /category:* /success:enable
auditpol /set /category:* /failure:enable

pause
echo "audit policy set."
