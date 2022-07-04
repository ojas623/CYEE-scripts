#!/bin/bash


sudo apt update
apt install apache2
echo "Apache2 installed."

apache2 -version
echo "Apache is confirmed to be version 2"

echo "allowing apache through firewall"
sudo ufw allow in "Apache Full"
sudo ufw allow "Apache"

echo "Apache allowed through firewall"

echo "starting apache"
service apache2 restart
echo "apache started"

rsync -a apache2.conf /etc/apache2/apache2.conf
