echo "enabling firewall..."
apt install ufw -y
sudo ufw enable
echo "firewall enabled."

echo "disabling unwanted packages associated with ufw..."
apt purge iptables-persistent -y

echo "configuring loopback rules..."
ufw allow in on lo
ufw allow out on lo
ufw deny in from 127.0.0.0/8 #denies all IPv4 loopback traffic
ufw deny in from ::1 #denies all IPv6 loopback traffic

echo "configuring outbound rules..."
ufw allow out on all
ufw status numbered
ufw default deny outgoing
ufw default deny routed

#CIS 3.5.2

