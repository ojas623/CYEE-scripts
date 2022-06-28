#!/bin/bash

echo "installing sudo..."
apt install sudo-ldap
echo "sudo installed."

#log file 
echo "creating sudo log file..."
touch /var/log/sudo.log #touch is used to create a file if it doesn't exist
chmod 640 /var/log/sudo.log #chmod640 is used to limit read and write access to the file
echo "sudo log file created."

echo "changing root password, type it in when prompted..."
sudo passwd root
echo "root password changed."

