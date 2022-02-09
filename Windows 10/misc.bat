@echo off
setlocal enabledelayedexpansion
net session

echo Clearing DNS cache...
ipconfig /flushdns
echo DNS cache cleared

