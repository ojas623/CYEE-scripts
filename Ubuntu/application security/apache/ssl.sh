#!/bin/bash

cp ~/CYEE-Scripts/Ubuntu/application security/apache/sslparams.conf /etc/apache2/conf-available/ssl-params.conf

cp ~/CYEE-Scripts/Ubuntu/application security/defaultssl.conf /etc/apache2/sites-available/default-ssl.conf

sudo a2enmod ssl
sudo a2enconf ssl-params
sudo apache2ctl configtest

echo "apache is going to be restarted to incorporate SSL"
sudo systemctl restart apache2