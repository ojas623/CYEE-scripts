echo "enabling FTP..."
sudo apt-get install proftpd
sudo ufw allow 21
rsync -a proftpd.conf /etc/proftpd/proftpd.conf
service proftpd restart

echo "FTP enabled."