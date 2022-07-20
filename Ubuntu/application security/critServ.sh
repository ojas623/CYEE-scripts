#! /bin/bash

echo "which service do you want to secure? (1: apache, 2: ftp, 3: ssh, 4: smb)"
read input -r 

if [ "$input" = "1" ]
then
    ./Users/ojasa/OneDrive/CYEE Scripts/CYEE-Scripts/Ubuntu/application security/apache/apache.sh
fi

if [ "$input" = "2" ]
then
    ./Users/ojasa/OneDrive/CYEE Scripts/CYEE-Scripts/Ubuntu/application security/ftp/ftp.sh
fi

if [ "$input" = "3" ]
then
    ./Users/ojasa/OneDrive/CYEE Scripts/CYEE-Scripts/Ubuntu/application security/ssh/ssh.sh
fi

if [ "$input" = "4" ]
then
    ./Users/ojasa/OneDrive/CYEE Scripts/CYEE-Scripts/Ubuntu/application security/smb/smb.sh
fi