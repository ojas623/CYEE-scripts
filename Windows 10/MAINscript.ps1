Write-Output "Make sure you are logged in as an admin"

$option1 = Read-Host "are the forensics questions answered? (y/n)"
if ($option1 -eq "y") {
    Write-Output "Starting the script"
    Clear-Host
    Write-Output "********************************************************************************"
    $choice = Read-Host "Options: (choose one below, just the number)"
    Write-Output "1. Create / delete a user"
    Write-Output "2. change password"
    Write-Output "3. policies (audit, lockout, pwd)"
    Write-Output "4. user rights / user type"
    Write-Output "5. firewall / smartscreen"
    Write-Output "6. delete media"
    Write-Output "7. port blocking"
    Write-Output "8. delete admin/guest"
    Write-Output "9. critical services (rdp, smb, ftp)"
    Write-Output "10. general stuff"
    Write-Output "11. network security"

    if($choice -eq "1"){
        . 'C:\Users\ojasa\OneDrive\Desktop\CYEE scripts\CYEE-scripts\Windows 10\user accounts\usersAddRem.ps1'
    }

    if($choice -eq "2"){
        . 'C:\Users\ojasa\OneDrive\Desktop\CYEE scripts\CYEE-scripts\Windows 10\user accounts\pwd.ps1'
    }

    if($choice -eq "3"){
        . 'C:\Users\ojasa\OneDrive\Desktop\CYEE scripts\CYEE-scripts\Windows 10\policies\auditpol.ps1'
        . 'C:\Users\ojasa\OneDrive\Desktop\CYEE scripts\CYEE-scripts\Windows 10\policies\lockoutpol.ps1'
        . 'C:\Users\ojasa\OneDrive\Desktop\CYEE scripts\CYEE-scripts\Windows 10\policies\pwdpol.ps1'
    }

    if($choice -eq "4"){
        . 'C:\Users\ojasa\OneDrive\Desktop\CYEE scripts\CYEE-scripts\Windows 10\user accounts\userProperty.ps1'
        . 'C:\Users\ojasa\OneDrive\Desktop\CYEE scripts\CYEE-scripts\Windows 10\user accounts\acctType.ps1'
    }

    if($choice -eq "5"){
        . 'C:\Users\ojasa\OneDrive\Desktop\CYEE scripts\CYEE-scripts\Windows 10\defensive countermeasures\firewall.ps1'
        . 'C:\Users\ojasa\OneDrive\Desktop\CYEE scripts\CYEE-scripts\Windows 10\defensive countermeasures\smartscreen.ps1'
    }

    if($choice -eq "6"){
        . 'C:\Users\ojasa\OneDrive\Desktop\CYEE scripts\CYEE-scripts\Windows 10\defensive countermeasures\delMedia.ps1'
    }

    if($choice -eq "7"){
        . 'C:\Users\ojasa\OneDrive\Desktop\CYEE scripts\CYEE-scripts\Windows 10\defensive countermeasures\blockPort.ps1'
    }

    if($choice -eq "8"){
        . 'C:\Users\ojasa\OneDrive\Desktop\CYEE scripts\CYEE-scripts\Windows 10\user accounts\disAdmGst.ps1'
    }




}
else {
    Write-Output "Please answer the forensics questions"
    Clear-Host
    exit}



