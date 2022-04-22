sudo apt update
apt-fast install apache2
echo "Apache2 installed."

apache2 -version
echo "Apache is confirmed to be version 2"

echo "allowing apache through firewall"
sudo ufw allow "Apache"
echo "Apache allowed through firewall"

echo "starting apache"
sudo systemctl start apache2
echo "apache started"

cp ~/CYEE-Scripts/Ubuntu/application security/apache/apache2.conf /etc/apache2/apache2.conf

