@echo off
setlocal enabledelayedexpansion
net session

echo Clearing DNS cache...
ipconfig /flushdns
echo DNS cache cleared

sc config Server start=auto
net start Server
echo "Server service started"

