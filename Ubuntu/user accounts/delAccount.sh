echo "Enter the name of the user you want to delete:"
read user
sudo deluser $user
echo "deleted $user"