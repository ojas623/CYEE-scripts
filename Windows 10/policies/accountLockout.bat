@echo off
setlocal enabledelayedexpansion
net session

echo "setting account lockout policy..."
echo Setting the lockout policy
net accounts /lockoutduration:30
net accounts /lockoutthreshold:5
net accounts /lockoutwindow:30
echo "lockout policy set."