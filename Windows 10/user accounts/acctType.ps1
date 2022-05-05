Write-Output "displaying all admins"

Get-LocalGroupMember -Group "Administrators"

$userChange = Read-Host "Enter the user who's privelages you want to change: "
$option = Read-Host "Do you want to add or remove the user from the admin group? (add/remove): "

if ($option -eq "add") {
    Add-LocalGroupMember -Group "Administrators" -Member $userChange
    Write-Output "User added to admin group"}

elseif ($option -eq "remove") {
    Remove-LocalGroupMember -Group "Administrators" -Member $userChange}

