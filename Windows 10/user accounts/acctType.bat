@echo off
setlocal enabledelayedexpansion
net session

echo "changing account types" 

set /p acctName = enter the name of the account whose type you want to change:
    set /p yesNo = do you want to change the type of $acctName? (y/n):
    if %yesNo% == "y" (
        set /p acctType = enter the type of account you want to change $acctName to [standard/administrator]:
        if %acctType% == "standard" (
            net user %acctName% /standard) 
        else (
            net user %acctName% /admin)
    
    else (
        echo "no changes made")

    )