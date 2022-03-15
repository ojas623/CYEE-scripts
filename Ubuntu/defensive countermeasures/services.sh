#! /bin/bash
sudo apt install systemctl 
sudo apt install chrony
sudo apt install crond
sudo apt install auditd
sudo apt install tcpd 
dpkg -s chrony
sudo apt purge ntp
sudo apt purge xserver-xorg*
sudo apt purge cups
sudo apt purge isc-dhcp-server
sudo apt purge slapd
sudo apt purge nfs-kernel-server
sudo apt purge bind9
sudo apt purge vsftpd
sudo apt purge apache2
sudo apt purge dovecot-imapd dovecot-pop3d
sudo apt purge samba 
sudo apt purge squid 
sudo apt purge snmpd
sudo apt purge rsync
sudo apt purge nis
sudo apt purge rsh-client
sudo apt purge talk
sudo apt purge telnet
sudo apt purge ldap-utils
sudo apt purge rpcbind
sudo apt purge telnet-server
sudo apt purge telnet-client
