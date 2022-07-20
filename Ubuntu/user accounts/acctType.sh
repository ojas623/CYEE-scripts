echo "Enter the name of the user you want to modify:"
read -r user

echo "do you want to make $user an administrator? (y/n)"
read -r admin
if [ "$admin" = "y" ]
then
    sudo adduser "$user" sudo
    echo "added $user to sudo group"
fi
elif
    sudo deluser "$user" sudo 
    echo "$user will not become an administrator"
fi