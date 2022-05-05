Write-Output "adding and removing users"

$option = Read-Host "add or remove users? (add/remove)"
$password = "CyberP@+tr10+!1"

if ($option -eq "add") {
    $userAdd = Read-Host "what's the name of the user do you want to add? "
    New-LocalUser -Name $userAdd -Password $password}

    if ($option -eq "remove") {
        $userRemove = Read-Host "what's the name of the user do you want to remove? "
        Remove-LocalUser -Name $userRemove}




