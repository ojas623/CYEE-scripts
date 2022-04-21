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
 set /p answer=Have you answered all the forensics questions?(y/n): 
	if /I %answer%==y (
		goto :menu
	) else (
		echo please finish them before continuing
		pause
		exit
	)

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
    set /p menuAnswer=:
    if %menuAnswer%=="1" (
        echo "which critical service do you want to secure from the list below?: "
        echo "1. SMB"
        echo "2. FTP"
        echo "3. RDP"
        echo "4. DNS"
        echo "5. BitLocker"
        
        set /p answerServ=:
        if %answerServ%=="1" (
            echo "SMB"
            echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            call SMBv2.bat
        )

        if %answerServ%=="2" (
            echo "FTP"
            echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            call FTP.bat
        )
        if %answerServ%=="3" (
            echo "RDP"
            echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            call RDP.bat
        )

    )


     if %menuAnswer%=="2" (
        echo "what do you want to do from the list below?: "
        echo "1. disable unwanted services and features"
        echo "2. block insecure ports"
        echo "3. enable and configure firewall"
        echo "4. deleted prohibited files"
        echo "5. file shares"

        set /p answerDefensive=:
        if %answerDefensive%=="1" (
            echo "unwanted services and features"
            echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            call disableServFeat.bat
        )

        if %answerDefensive%=="2" (
            echo "insecure ports"
            echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            call blockPort.bat
        )

        if %answerDefensive%=="3" (
            echo "firewall"
            echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            call firewall.bat
        )

        if %answerDefensive%=="4" (
            echo "prohibited files"
            echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            call prohibitFiles.bat
        )

        if %answerDefensive%=="5" (
            echo "file shares"
            echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            call fileShares.bat
        )
        
        )


     if %menuAnswer%=="3" (
        echo "which user account option do you want to run from the list below?:"
        echo "1. account type"
        echo "2. add account"
        echo "3. delete account"
        echo "4. disable admin and guest accounts"
        echo "5. configure groups"
        echo "6. configure user properties"

        set /p answerUser=:
        if %answerUser%=="1" (
            echo "account type"
            echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            call acctType.bat
        )

        if %answerUser%=="2" (
            echo "add account"
            echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            call addAccount.bat
        )

        if %answerUser%=="3" (
            echo "delete account"
            echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            call delAccount.bat
        )

        if %answerUser%=="4" (
            echo "disable admin and guest accounts"
            echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            call disAdmGst.bat
        )

        if %answerUser%=="5" (
            echo "configure groups"
            echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            call groups.bat
        )

        if %answerUser%=="6" (
            echo "configure user properties"
            echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            call userProperty.bat
        )
        
        )

    if %menuAnswer%=="4" (
        echo "which policy option do you want to run from the list below?:"
        echo "1. account lockout policy"
        echo "2. password policy"
        echo "3. audit policy" 

        set /p answerPolicy=:
        if %answerPolicy%=="1" (
            echo "account lockout policy"
            echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            call accountLockout.bat
        )

        if %answerPolicy%=="2" (
            echo "password policy"
            echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            call pwdpol.bat
        )

        if %answerPolicy%=="3" (
            echo "audit policy"
            echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            call auditpol.bat
        )
        
        )

        