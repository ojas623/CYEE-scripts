echo "enabling FTP..."
sudo apt-get install proftpd
sudo service proftpd restart
sudo systemctl reload proftpd

rsync -a proftpd.conf /etc/proftpd/proftpd.conf

echo "FTP enabled."