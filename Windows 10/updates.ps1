Write-Output "updating the system"

Install-Module PSWindowsUpdate
Get-WindowsUpdate -AcceptAll -Install -AutoReboot
