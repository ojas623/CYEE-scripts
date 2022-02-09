@echo off
setlocal enabledelayedexpansion
net session

echo "enabling firewall..."
Netsh advfirewall set allprofiles state on
echo "firewall enabled."

echo "setting firewall rules..."
netsh advfirewall set currentprofile firewallpolicy blockinboundalways,allowoutbound