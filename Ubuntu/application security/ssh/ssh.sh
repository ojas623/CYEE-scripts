echo "enabling SSH..."
apt-fast install openssh-server
apt-fast install openssh-client

cp ~/CYEE-Scripts/Ubuntu/application security/ssh/sshd_config /etc/ssh/sshd_config
/usr/sbin/sshd -t

sudo service ssh restart
systemctl reload sshd

echo "SSH enabled."

echo "disabling SSH connections from all other hosts"
sudo iptables -A INPUT -p tcp --dport 8908 -j DROP
echo "SSH connections from all other hosts blocked."
