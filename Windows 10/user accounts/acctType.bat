@echo off
setlocal enabledelayedexpansion
net session

echo "changing account types" 
set /p acctName=Which account would you like to make an admin?:
    net user !acctName! /administrator:yes
    echo !acctName! is now an admin

set /p acctName=Which account would you like to make a standard user?:
    net user !acctName! /administrator:no
    echo !acctName! is now a standard account