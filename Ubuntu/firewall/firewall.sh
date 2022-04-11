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
ufw allow git
ufw allow in http
ufw allow in https
ufw allow out 53
ufw logging on
ufw default deny incoming
ufw default allow outgoing
ufw default deny routed

echo "configuring other firewall rules..."
ufw logging on
ufw logging high

echo "allowing internet access..."
sudo ufw allow out 53  
sudo ufw allow out http  
sudo ufw allow out https  
sudo ufw allow out 8080 

#CIS 3.5.2

