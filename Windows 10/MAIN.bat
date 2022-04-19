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
    echo "please delete the Ubuntu folder"
    echo "choose an option to run from the list below: "
    echo "1. critical services"
    echo "2. defensive countermeasures"
    echo "3. user accounts"
    echo "4. policies"
    echo "5. firefox config"
    echo "6. LGPO"
    echo "7. miscellaneous options"
    echo "8. updates"
    echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    set /p answer=:
    if /I {%answer%}=={1} (
        echo "which critical service do you want to secure from the list below?: "
        echo "1. SMB"
        echo "2. FTP"
        echo "3. RDP"
        echo "4. DNS"
        echo "5. BitLocker"
        
        set /p answer=:
        if /I {%answer%}=={1} (
            echo "SMB"
            echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            call :SMBv2

        if /I {%answer%}=={2} (
            echo "FTP"
            echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            call :FTP 
        if /I {%answer%}=={3} (
            echo "RDP"
            echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            call :RDP


    ) elseif /I {%answer%}=={2} (
        goto :defcon

    ) elseif /I {%answer%}=={3} (
        goto :useracc

    ) elseif /I {%answer%}=={4} (
        goto :policies

    ) elseif /I {%answer%}=={5} (
        goto :firefox

    ) elseif /I {%answer%}=={6} (
        goto :lgpo

    ) elseif /I {%answer%}=={7} (
        goto :misc

    ) elseif /I {%answer%}=={8} (
        goto :updates

    ) else (
        echo "invalid option"
        pause
        exit
    )