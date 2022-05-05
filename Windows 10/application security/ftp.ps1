Write-Output "Enabling FTP"

Install-WindowsFeature Web-FTP-Server -IncludeAllSubFeature -Verbose

#FTP is a protocol that secures the transfering of a file 

Write-Output"
https://4sysops.com/archives/install-and-configure-an-ftp-server-with-powershell/


To enable an FTP server do this:
    control pannel > programs and features > turn features on/off > expand IIS > enable everything for FTP

    control pannel > admin tools > double click IIS manager > expand and right click sites on the connections page > add FTP site > 
    put a name and create an FTP folder > next > start FTP site automatically & require SSL > next > 
    click the basic option on authentication and allow access to users specified in the README > check read and write > click finish

To allow FTP through firewall:
    Windows Firewall > allow an app or feature through Windows Firewall > changes > FTP Server > allow on public and private < click Ok

Securing FTP:
    enable IIS admin service: gpedit,msc > policies > windows settings > security settings > system services > IIS admin service -- CIS page 316

    make sure FTP service is enabled: gpedit.msc > policis > windows settings > security settings > system services > Microsoft FTP service  -- CIS page 325
"
