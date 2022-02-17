#! /bin/bash

apt install systemctl 
echo "systemctl installed."

apt install chrony
echo "chrony installed."

apt purge ntp
echo "ntp removed."

apt purge xserver-xorg*
echo "X windows system packages removed."

systemctl stop avahi-daemon.service
systemctl stop avahi-daemon.socket
apt purge avahi-daemon
echo "avahi-daemon removed."

apt purge cups
echo "cups removed."

apt purge isc-dhcp-server
echo "DHCP server removed."
#DHCP is dynamic host config protocol, allows machines to be dynamically assigned an IP

apt purge sladp
echo "sladp removed."
#LDAP is light-weight directory access protocol, used to access a directory

apt purge nfs-kernel-server
echo "NFS server removed."
#NFS is network file system, used to share files between computers

apt purge bind9
echo "DNS server removed."

apt purge vsftpd
echo "FTP server removed."

apt purge apache2
echo "Apache2 removed."

apt purge dovecot-imapd dovecot-pop3d dovecot-sieve dovecot-lmtpd
echo "IMAP, POP3, SIEVE, LMTP removed."

apt purge samba
echo "Samba removed."

apt purge squid
echo "Squid removed."
#squid is a proxy server

apt purge snmpd
echo "SNMP server removed."
#SNMP is simple netowrk management protocol, used to monitor and control network devices

#CIS section 2.1