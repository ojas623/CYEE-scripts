@echo off
setlocal enabledelayedexpansion
net session

echo "loading forensics options..."
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~"

set /p answer=What would you like to do?:
echo "1). Find the UID/SID of a user           2). Find the hostname"
echo "3). Find text in a file              4). Find path of a file"
echo "5). Find the hash of a file          6). exit"

if %answer%==1 (
  set /p answer=What would you like to do?: [UID/SID]
    if %answer%==SID (
        powershell -File C:\script\CYEE-scripts\Windows 10\forensics\SID.ps1
    )
    pause
    exit

   
)

