#! /bin/bash
apt install systemctl
apt install chrony
apt install crond
apt install auditd
apt install tcpd 
apt install systemctl 
systemctl enable cron
systemctl enable auditd
systemctl --now disable avahi-daemon
systemctl --now disable cups
systemctl --now disable isc-dhcp-server
systemctl --now disable isc-dhcp-server6
systemctl --now disable slapd
systemctl --now disable nfs-server
systemctl --now disable rpcbind
systemctl --now disable bind9
systemctl --now disable vsftpd
systemctl --now disable apache2
systemctl --now disable dovecot
systemctl --now disable squid
systemctl --now disable snmpd
systemctl disable xinetd
apt purge xinetd
systemctl stop xinetd
apt remove openbsd-inetd
systemctl disable cups
systemctl stop cups
systemctl disable isc-dhcp-server
systemctl stop isc-dhcp-server
systemctl disable isc-dhcp-server6
systemctl stop isc-dhcp-server6
systemctl disable dhcpd
systemctl stop dhcpd
systemctl disable discard-dgram
systemctl stop discard-dgram
systemctl disable slapd
systemctl stop slapd
systemctl disable nfs-server
systemctl stop nfs-server
systemctl disable rpcbind
systemctl stop rpcbind
systemctl disable vsftpd
systemctl stop vsftpd
systemctl disable dovecot
systemctl stop dovecot
systemctl disable squid
systemctl stop squid
systemctl disable snmpd
systemctl stop snmpd
systemctl disable rsync
systemctl stop rsync
systemctl disable nis
systemctl stop nic
apt-fast remove nis -y
systemctl stop nis
apt remove rsh-client rsh-redone-client
apt remove talk
apt remove telnet
apt remove ldap-utils
systemctl enable auditd
systemctl disable avahi-daemon
systemctl stop avahi-daemon
apt-fast remove rsh-server
systemctl disable chargen-dgram
systemctl stop chargen-dgram
systemctl disable chargen-stream
systemctl stop chargen-stream
systemctl enable crond
systemctl disable daytime-dgram
systemctl stop daytime-dgram
systemctl disable daytime-stream
systemctl stop daytime-stream
systemctl disable discard-dgram
systemctl stop discard-dgram
systemctl disable discard-stream
systemctl stop discard-stream
systemctl disable named
systemctl stop named
systemctl disable echo-stream
systemctl stop echo-stream
systemctl disable echo-dgram
systemctl stop echo-dgram
systemctl disable vsftpd
systemctl stop vsftpd
systemctl disable httpd
systemctl stop httpd
apt remove openldap-clients 
systemctl disable nfs
systemctl stop nfs
apt remove mctrans -y
apt remove ypbind -y
systemctl disable ypserv
systemctl stop ypserv
apt-fast remove ypserv -y
systemctl disable rpcbind
systemctl stop rpcbind
apt remove rsh -y
apt-fast remove rsh-client -y
systemctl disable rexec.socket
systemctl stop rexec.socket
systemctl disable rlogin.socket
systemctl stop rlogin.socket
systemctl disable rsh.socket
systemctl stop rsh.socket
systemctl disable rsyncd
systemctl stop rsyncd
systemctl disable smb
systemctl stop smb
systemctl --now disable smbd
apt remove setroubleshoot 
systemctl disable snmpd
systemctl stop snmpd
systemctl disable minetest
systemctl stop minetest
systemctl disable ntalk
systemctl stop ntalk
apt-fast remove talk -y
systemctl disable snmpd
systemctl stop snmpd
apt remove telnet
systemctl disable telnet.socket
systemctl stop telnet.socket
apt remove telnet-server
apt remove tftp-server
apt remove tftp
systemctl disable tftp
systemctl stop tftp
systemctl disable tftp.socket
systemctl stop tftp.socket
systemctl stop postgresql
systemctl disable postgresql
apt remove postgresql-client
systemctl disable openssh-server
systemctl stop openssh-server
apt remove openssh-client
systemctl disable openssh-client
systemctl stop openssh-client
apt remove openssh-server
apt purge nginx
apt purge nginx-core 