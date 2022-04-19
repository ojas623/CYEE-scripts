@echo off
setlocal enabledelayedexpansion
net session

echo "Clearing DNS cache..."
ipconfig /flushdns
echo DNS cache cleared

sc config Server start=auto
net start Server
echo "Server service started"

echo "enabling data execution prevention..."

BCDEDIT /SET {CURRENT} NX ALWAYSON

echo "data execution prevention enabled"

echo "changing file system to NFTS..."

convert C: /fs:ntfs  

echo "file system changed"

echo "enabling smart screen"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v EnableWindowsSmartScreen /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v WindowsSmartScreenTimeout /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v WindowsSmartScreenEnableHistory /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v WindowsSmartScreenEnableHistoryDetails /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v WindowsSmartScreenEnableInPrivateBrowsing /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v WindowsSmartScreenEnableInPrivateBrowsingDetails /t REG_DWORD /d 1 /f
echo "smart screen enabled"

echo "configuring screen timeout limit..."
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\0" /v "ACSettingIndex" /t REG_DWORD /d 15 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\1" /v "DCSettingIndex" /t REG_DWORD /d 15 /f
echo "done"


