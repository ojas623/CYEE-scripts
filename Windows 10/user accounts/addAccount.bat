@echo off
setlocal enabledelayedexpansion
net session


set /p acctName=What is the user you would like to create?:
	net user !acctName! /add
	echo !acctName! has been added
    pause
    exit

    