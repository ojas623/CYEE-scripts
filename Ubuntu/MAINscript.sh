#!/bin/bash

echo "make sure you're an admin"

read -p "have you finished the forensics questions? (y/n) " -n 1 -r
if [[ $REPLY =~ y$ ]]
then
    echo menu
    read -r input 
    if [ "$input" = "1" ]
    then 
    ./Users/ojasa/OneDrive/CYEE Scripts/CYEE-Scripts/Ubuntu/user accounts/addDeluser.sh 
    fi

    if [ "$input" = "2" ]
    then
    ./Users/ojasa/OneDrive/CYEE Scripts/CYEE-Scripts/Ubuntu/user accounts/changePwd.sh 
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
    echo "3. policies (audit, lockout, pwd)"
    echo "4. user rights / user type"
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
