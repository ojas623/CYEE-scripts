#!/bin/bash

echo "make sure you're an admin"

read -p "have you finished the forensics questions? (y/n) " -n 1 -r
if [[ $REPLY =~ y$ ]]
then
    echo menu
    read -r input 
    if [ "$input" = "1" ]
    then 
    ./Users/ojasa/OneDrive/CYEE Scripts/CYEE-Scripts/Ubuntu/user accounts/usersAddRem.sh 
    fi

    if [ "$input" = "2" ]
    then
    ./Users/ojasa/OneDrive/CYEE Scripts/CYEE-Scripts/Ubuntu/user accounts/pwd.sh 
    fi

    if [ "$input" = "3" ]
    then
    ./Users/ojasa/OneDrive/CYEE Scripts/CYEE-Scripts/Ubuntu/policies/auditpol.sh

    fi

    if [ "$input" = "4" ]
    then
    ./Users/ojasa/OneDrive/CYEE Scripts/CYEE-Scripts/Ubuntu/user accounts/acctType.sh
    fi

    if [ "$input" = "5" ]
    then
    ./Users/ojasa/OneDrive/CYEE Scripts/CYEE-Scripts/Ubuntu/defensive countermeasures/firewall.sh
    fi

    if [ "$input" = "6" ]
    then
    ./Users/ojasa/OneDrive/CYEE Scripts/CYEE-Scripts/Ubuntu/defensive countermeasures/delMedia.sh
    fi

    if [ "$input" = "7" ]
    then
    echo "already done in option 5"
    fi 

    if [ "$input" = "8" ]
    then
    ./Users/ojasa/OneDrive/CYEE Scripts/CYEE-Scripts/Ubuntu/user accounts/disAdmGst.sh
    fi

    if [ "$input" = "9" ]
    then
    ./Users/ojasa/OneDrive/CYEE Scripts/CYEE-Scripts/Ubuntu/application security/critServ.sh
    fi

    if [ "$input" = "10" ]
    then
    ./Users/ojasa/OneDrive/CYEE Scripts/CYEE-Scripts/Ubuntu/misc.sh
    fi

    if [ "$input" = "11" ]
    then
    ./Users/ojasa/OneDrive/CYEE Scripts/CYEE-Scripts/Ubuntu/defensive countermeasures/services.sh
    fi

    if [ "$input" = "12" ]
    then
    ./Users/ojasa/OneDrive/CYEE Scripts/CYEE-Scripts/Ubuntu/updates.sh
    fi

    if [ "$input" = "13" ]
    then
    ./Users/ojasa/OneDrive/CYEE Scripts/CYEE-Scripts/Ubuntu/defensive countermeasures/netSec.sh
    fi





elif [[ $REPLY =~ n$ ]]
then
    echo "Please complete the forensics questions before continuing."
    exit 1
fi








menu () {
    echo "Please select an option:"
    echo "1. create / delete a user"
    echo "2. change password"
    echo "3. audit policy"
    echo "4. user type"
    echo "5. firewall"
    echo "6. delete media"
    echo "7. port blocking"
    echo "8. delete admin/guest"
    echo "9. critical services (ssh, smb, ftp, apache)"
    echo "10. general stuff"
    echo "11. disable services / features"
    echo "12. updates"
    echo "13. network security"
}
