echo "enter the name of the user you no longer want to be an administrator:"
read user
echo "this user will now be a standard user"
sudo deluser $user sudo
echo "removed $user from sudo group"