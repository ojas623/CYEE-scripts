@echo off
setlocal enabledelayedexpansion
net session

set /p sharedel = Do you want to delete a share? [y/n]]
if %sharedel% == y (
   set /p sharename = Enter the name of the share to delete: 
   net share %sharename% /delete 
   exit )
   
else (
   exit )


set /p shareadd = Do you want to add a share? [y/n]]
if %shareadd% == y(
   set /p sharename = Enter the name of the share to add: 
   set /p sharepath = Enter the path of the share to add: 
   net share %sharename%=%sharepath% /grant:everyone,full
   exit )

else (
   exit )

set /p shareUser  = Do you want to add a user to a share? [y/n]]
if %shareUser% == y (
   set /p sharename = Enter the name of the share to add a user to: 
   set /p username = Enter the name of the user to add: 
   set /p userpass = Enter the password of the user to add: 
   net share %sharename% /grant:%username%:FULL=%userpass%
   exit )

else (
   exit )