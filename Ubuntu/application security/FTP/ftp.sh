echo "enabling FTP..."
sudo apt-get install proftpd
sudo service proftpd restart
sudo systemctl reload proftpd

cp ~/CYEE-Scripts/Ubuntu/application security/FTP/proftpd.conf /etc/proftpd/proftpd.conf


echo "FTP enabled."