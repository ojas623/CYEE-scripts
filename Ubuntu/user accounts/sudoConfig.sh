echo "installing sudo..."
apt install sudo-ldap
echo "sudo installed."

#log file 
echo "creating sudo log file..."
touch /var/log/sudo.log
chmod 640 /var/log/sudo.log
echo "sudo log file created."
