$option = Read-Host "Which service do you want to secure? (1: ftp, 2: smb, 3: rdp)"

if ($option -eq 1) {
    . 'C:\Users\ojasa\OneDrive\Desktop\CYEE scripts\CYEE-scripts\Windows 10\application security\ftp.ps1'
}

elseif ($option -eq 2) {
    . 'C:\Users\ojasa\OneDrive\Desktop\CYEE scripts\CYEE-scripts\Windows 10\application security\smb.ps1'
}

elseif ($option -eq 3) {
    . 'C:\Users\ojasa\OneDrive\Desktop\CYEE scripts\CYEE-scripts\Windows 10\application security\rdp.ps1'
}