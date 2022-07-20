#!/bin/bash
echo "do you want to add or delete a user? (add/del)"
read -r input
if [ "$input" = "add" ]
then
    addUser


elif [ "$input" = "del" ]
then 
    delUser
fi


addUser(){
    echo "Enter the name of the user you want to add:"
read -r user
sudo adduser "$user"
echo "Enter the password for the user:"
read  -r -s password
sudo usermod -p "$password" "$user"
echo "added $user"

echo "do you want to make $user an administrator? (y/n)"
read -r admin
if [ "$admin" = "y" ]
then
    sudo usermod -a -G sudo "$user"
    echo "added $user to sudo group"
else

    echo "user will not become an administrator"
fi
}



delUser(){
    echo "Enter the name of the user you want to delete:"
    read -r user
    sudo deluser "$user"
    echo "deleted $user"
}