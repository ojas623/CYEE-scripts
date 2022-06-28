#!/bin/bash

echo "Enter the name of the user you want to add:"
read -r user
sudo adduser "$user"
echo "Enter the password for the user:"
read -s password
sudo usermod -p $password $user
echo "added $user"

echo "do you want to make $user an administrator? (y/n)"
read admin
if [ $admin = "y" ]
then
    sudo usermod -a -G sudo $user
    echo "added $user to sudo group"
fi

else
    echo "user will not become an administrator"
fi
