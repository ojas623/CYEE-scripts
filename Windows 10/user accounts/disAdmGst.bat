@echo off
setlocal enabledelayedexpansion
net session

echo "disabling guest and admin account..."
net user Guest /active:no
net user Administrator /active:no
echo "guest and admin accounts disabled"