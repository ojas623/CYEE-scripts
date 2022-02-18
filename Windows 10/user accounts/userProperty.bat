@echo off
setlocal enabledelayedexpansion
net session

echo "setting password user properties..."

wmic UserAccount set PasswordExpires = True
wmic UserAccount set PasswordChangeable = True
wmic UserAccount set PasswordRequired = True