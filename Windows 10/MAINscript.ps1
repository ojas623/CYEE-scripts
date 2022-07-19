Write-Output "Make sure you are logged in as an admin"

$option1 = Read-Host "are the forensics questions answered? (y/n)"
if ($option1 -eq "y") {
    Write-Output "Starting the script"
    Clear-Host
    Write-Output "********************************************************************************"
    $option2 = Read-Host "Options: (choose one below, just the number)"
    Write-Output "1. Create / delete a user"
    Write-Output "2. password policy / change pwd policy"
    Write-Output "3. policies (audit and lockout)"
    Write-Output "4. user rights"
    Write-Output "5. firewall / smartscreen"
    Write-Output "6. delete media"
    Write-Output "7. port blocking"
    Write-Output "8. delete admin/guest"
    Write-Output "9. critical services (rdp, smb, ftp)"

    if($option2 -eq "1"){
        . 'C:\Users\ojasa\OneDrive\Desktop\CYEE scripts\CYEE-scripts\Windows 10\user accounts\usersAddRem.ps1'
    }

    




}
else {
    Write-Output "Please answer the forensics questions"
    Clear-Host
    exit}



