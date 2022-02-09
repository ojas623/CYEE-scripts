@echo off
setlocal enabledelayedexpansion
net session

echo "enabling and securing FTP..."
sc config FTPSVC start=enabled
net start FTPSVC
