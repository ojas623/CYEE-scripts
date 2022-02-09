echo "do you want SSH to be enabled?"
read answer
if [[answer -e "y"]]
then
echo "enabling SSH..."
sudo systemctl enable ssh
sudo systemctl start ssh
echo "SSH enabled."
fi

echo "securing SSH..."
sudo sed -i 's/^#Protocol 2/Protocol 2/' /etc/ssh/sshd_config
sudo sed -i 's/^#LogLevel INFO/LogLevel VERBOSE/' /etc/ssh/sshd_config
sudo sed -i 's/^#X11Forwarding yes/X11Forwarding no/' /etc/ssh/sshd_config
sudo sed -i 's/^#MaxAuthTries 6/MaxAuthTries 4/' /etc/ssh/sshd_config
sudo sed -i 's/^#IgnoreRhosts yes/IgnoreRhosts yes/' /etc/ssh/sshd_config
sudo sed -i 's/^#HostbasedAuthentication no/HostbasedAuthentication no/' /etc/ssh/sshd_config
sudo sed -i 's/^#PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config
sudo sed -i 's/^#PermitEmptyPasswords no/PermitEmptyPasswords no/' /etc/ssh/sshd_config
sudo sed -i 's/^#PermitUserEnvironment no/PermitUserEnvironment no/' /etc/ssh/sshd_config
sudo sed -i 's/^#Ciphers aes256-ctr,aes192-ctr,aes128-ctr/Ciphers aes256-ctr,aes192-ctr,aes128-ctr/' /etc/ssh/sshd_config
sudo sed -i 's/^#MACs
