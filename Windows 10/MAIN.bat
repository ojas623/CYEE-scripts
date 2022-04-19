@echo off
setlocal enabledelayedexpansion
net session
if %errorlevel%==0 (
	echo Admin rights granted!
) else (
    echo Failure, no rights
	pause
    exit
)
 cls
 set /p answer=Have you answered all the forensics questions?[y/n]: 
	if /I {%answer%}=={y} (
		goto :menu
	) else (
		echo please go and answer them.
		pause
		exit
	)



:menu
    cls 
    echo "CYEE"

	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    echo "choose an option to run from the list below: "
    echo "1. application security"
    echo "2. defensive countermeasures"
    echo "3. user accounts"
    echo "4. policies"
    echo "5. firefox config"
    echo "6. LGPO"
    echo "7. miscellaneous options"
    echo "8. updates"
    echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
