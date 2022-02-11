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

