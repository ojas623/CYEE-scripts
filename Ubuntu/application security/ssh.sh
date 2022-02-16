echo "enabling SSH..."
apt-fast install openssh-server
apt-fast install openssh-client
systemctl reload sshd
echo "SSH enabled."