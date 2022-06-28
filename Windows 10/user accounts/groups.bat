@echo off
setlocal enabledelayedexpansion
net session

set /p answer = Do you want to add a group? (y/n):
if %answer% == y (
    set /p groupName=What is the group you would like to create?:
        net localgroup !groupName! /add
        echo !groupName! has been added)
else (
    echo "No groups added")
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

set /p answer = Do you want to remove a group? (y/n):
if %answer% == y (
    set /p groupName=What is the group you would like to remove?:
        net localgroup !groupName! /delete
        echo !groupName! has been removed)
else (
    echo "No groups removed")
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~