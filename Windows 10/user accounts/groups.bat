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


set /p answer = Do you want to remove a group? (y/n):
if %answer% == y (
    set /p groupName=What is the group you would like to remove?:
        net localgroup !groupName! /delete
        echo !groupName! has been removed)
else (
    echo "No groups removed")
    

set /p answer = Do you want to add a user to a group? (y/n):
if %answer% == y (
    set /p userName=What is the user you would like to add to a group?:
        set /p groupName=What is the group you would like to add the user to?:
            net localgroup !groupName! !userName! /add
            echo !userName! has been added to !groupName!)
else (
    echo "No users added")


set /p answer = Do you want to remove a user from a group? (y/n):
if %answer% == y (
    set /p userName=What is the user you would like to remove from a group?:
        set /p groupName=What is the group you would like to remove the user from?:
            net localgroup !groupName! !userName! /delete
            echo !userName! has been removed from !groupName!)
else (
    echo "No users removed")