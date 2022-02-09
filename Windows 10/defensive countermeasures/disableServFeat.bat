@echo off
setlocal enabledelayedexpansion
net session

echo "disabling insecure services and features..."
sc config tlntsvr start= disabled
net stop tlntsvr
echo "telnet disabled"

sc config mrxsmb10 start=disabled
net stop mrxsmb10
echo "smb 1.0 disabled"

sc config AxIntSv start=disabled
net stop AxIntSv 
echo "ActiveX installer disabled"

sc config BTAGService start=disabled
net stop BTAGService
echo "Bluetooth audio gateway disabled"

sc config ALG start=disabled
net stop ALG
echo "application layer gateway service disabled"

sc config tzautoupdate start=disabled
net stop tzautoupdate
echo "timezone auto update disabled"

sc config Fax start= disabled
net stop Fax
echo "fax service disabled"

sc config HomeGroupListener start=disabled
net stop HomeGroupListener
echo "homegroup listener disabled"

sc config SharedAccess start=disabled
net stop SharedAccess
echo "shared access disabled"

sc config MessagingService start=disabled
net stop MessagingService
echo "messaging service disabled"

sc config FTPSVC start=disabled
net stop FTPSVC
echo "ftp service disabled"

sc config Spooler start=disabled
net stop Spooler
echo "spooler service disabled"

sc config PrintNotify start=disabled
net stop PrintNotify
echo "print notify service disabled"

sc config PrintWorkflow start=disabled
net stop PrintWorkflow
echo "print workflow service disabled"

sc config RemoteRegistry start=disabled
net stop RemoteRegistry
echo "remote registry service disabled"

sc config SNMPTRAP start=disabled
net stop SNMPTRAP
echo "snmp trap service disabled"

sc config Themes start=disabled
net stop Themes
echo "themes service disabled"

sc config WebCLient start=disabled
net stop WebCLient
echo "web client service disabled"

sc config XboxGipSvc start=disabled
net stop XboxGipSvc
echo "xbox gip service disabled"

sc config XblAuthManager start=disabled
net stop XblAuthManager
echo "xbox authentication manager disabled"

sc config XboxNetApiSvc start=disabled
net stop XboxNetApiSvc
echo "xbox network api service disabled"

sc config Browser start=disabled
net stop Browser
echo "browser service disabled"

