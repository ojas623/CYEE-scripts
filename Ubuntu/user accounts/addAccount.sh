echo "Enter the name of the user you want to add:"
read user
sudo adduser $user 
echo "Enter the password for the user:"
read -s password
sudo usermod -p $password $user

