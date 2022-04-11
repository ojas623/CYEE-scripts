sudo apt install nftables
cp ~ /CYEE-scripts/Ubuntu/firewall/nftables.rules /etc/nftables.rules
nft -f /etc/nftables.rules

iptables -L 
ip6tables -L

iptables -F 
ip6tables -F

#CIS 3.5.2.5