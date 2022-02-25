@echo off
setlocal enabledelayedexpansion
net session



netsh advfirewall firewall add rule name="BlockDNSZoneTransfers" protocol=TCP dir=in localport=53 action=block
netsh advfirewall firewall add rule name="BlockTFTPDaemon" protocol=UDP dir=in localport=69 action=block
netsh advfirewall firewall add rule name="BlockLink" protocol=TCP dir=in localport=87 action=block
netsh advfirewall firewall add rule name="BlockSUNRPC" protocol=TCP dir=in localport=111 action=block
netsh advfirewall firewall add rule name="BlockSUNRPC" protocol=UDP dir=in localport=111 action=block
netsh advfirewall firewall add rule name="BlockBSDUNIX" protocol=TCP dir=in localport=512 action=block
netsh advfirewall firewall add rule name="BlockBSDUNIX" protocol=TCP dir=in localport=513 action=block
netsh advfirewall firewall add rule name="BlockBSDUNIX" protocol=TCP dir=in localport=514 action=block
netsh advfirewall firewall add rule name="BlockLPD" protocol=TCP dir=in localport=515 action=block
netsh advfirewall firewall add rule name="BlockUUCPD" protocol=TCP dir=in localport=540 action=block
netsh advfirewall firewall add rule name="BlockOpenWindows" protocol=TCP dir=in localport=2000 action=block
netsh advfirewall firewall add rule name="BlockOpenWindows" protocol=UDP dir=in localport=2000 action=block
netsh advfirewall firewall add rule name="BlockNFS" protocol=TCP dir=in localport=2049 action=block
netsh advfirewall firewall add rule name="BlockNFS" protocol=UDP dir=in localport=2049 action=block
netsh advfirewall firewall add rule name="BlockFTP" protocol=TCP dir=in localport=21 action=block
netsh advfirewall firewall add rule name="BlockSSH" protocol=TCP dir=in localport=22 action=block
netsh advfirewall firewall add rule name="BlockTelnet" protocol=TCP dir=in localport=23 action=block
netsh advfirewall firewall add rule name="BlockSMTP" protocol=TCP dir=in localport=25 action=block
netsh advfirewall firewall add rule name="BlockNTP" protocol=TCP dir=in localport=37 action=block
netsh advfirewall firewall add rule name="BlockNTP" protocol=UDP dir=in localport=37 action=block
netsh advfirewall firewall add rule name="BlockFinger" protocol=TCP dir=in localport=79 action=block
netsh advfirewall firewall add rule name="BlockHTTP" protocol=TCP dir=in localport=80 action=block
netsh advfirewall firewall add rule name="BlockPOP" protocol=TCP dir=in localport=109 action=block
netsh advfirewall firewall add rule name="BlockPOP" protocol=TCP dir=in localport=110 action=block
netsh advfirewall firewall add rule name="BlockNNTP" protocol=TCP dir=in localport=119 action=block
netsh advfirewall firewall add rule name="BlockNTP" protocol=TCP dir=in localport=123 action=block
netsh advfirewall firewall add rule name="BlockNetBIOSTCP" protocol=TCP dir=in localport=135 action=block
netsh advfirewall firewall add rule name="BlockNetBIOSUDP" protocol=UDP dir=in localport=135 action=block
netsh advfirewall firewall add rule name="BlockNetBIOSv2" protocol=UDP dir=in localport=137 action=block
netsh advfirewall firewall add rule name="BlockNetBIOSv3" protocol=UDP dir=in localport=138 action=block
netsh advfirewall firewall add rule name="BlockNetBIOSv4" protocol=TCP dir=in localport=139 action=block
netsh advfirewall firewall add rule name="BlockIMAP" protocol=TCP dir=in localport=143 action=block
netsh advfirewall firewall add rule name="BlockSNMPTCP" protocol=TCP dir=in localport=161 action=block
netsh advfirewall firewall add rule name="BlockSNMPUDP" protocol=UDP dir=in localport=161 action=block
netsh advfirewall firewall add rule name="BlockSNMPTCPv2" protocol=TCP dir=in localport=162 action=block
netsh advfirewall firewall add rule name="BlockSNMPUDPv2" protocol=UDP dir=in localport=162 action=block
netsh advfirewall firewall add rule name="BlockBGP" protocol=TCP dir=in localport=179 action=block
netsh advfirewall firewall add rule name="BlockLDAPTCP" protocol=TCP dir=in localport=389 action=block
netsh advfirewall firewall add rule name="BlockLDAPUDP" protocol=UDP dir=in localport=389 action=block
netsh advfirewall firewall add rule name="BlockNetBIOSWin2kTCP" protocol=TCP dir=in localport=445 action=block
netsh advfirewall firewall add rule name="BlockNetBIOSWin2kUDP" protocol=UDP dir=in localport=445 action=block
netsh advfirewall firewall add rule name="BlockSyslog" protocol=UDP dir=in localport=514 action=block
netsh advfirewall firewall add rule name="BlockSOCKS" protocol=TCP dir=in localport=1080 action=block
netsh advfirewall firewall add rule name="BlockCiscoAUX" protocol=TCP dir=in localport=2001 action=block
netsh advfirewall firewall add rule name="BlockCiscoAUXStream" protocol=TCP dir=in localport=4001 action=block
netsh advfirewall firewall add rule name="BlockLockdTCP" protocol=TCP dir=in localport=4045 action=block
netsh advfirewall firewall add rule name="BlockLockdUDP" protocol=UDP dir=in localport=4045 action=block
netsh advfirewall firewall add rule name="BlockCiscoAUXBinary" protocol=TCP dir=in localport=6001 action=block
netsh advfirewall firewall add rule name="BlockHTTPv1" protocol=TCP dir=in localport=8000 action=block
netsh advfirewall firewall add rule name="BlockHTTPv2" protocol=TCP dir=in localport=8080 action=block
netsh advfirewall firewall add rule name="BlockHTTPv3" protocol=TCP dir=in localport=8888 action=block