#! /bin/bash

echo "enabling SSH..."
apt install openssh-server
apt install openssh-client

rsync -a sshd_config /etc/ssh/sshd_config
sudo service ssh restart


echo "SSH enabled."

echo "disabling SSH connections from all other hosts"
sudo iptables -A INPUT -p tcp --dport 8908 -j DROP
echo "SSH connections from all other hosts blocked."
