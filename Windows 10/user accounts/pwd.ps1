$password = "CyberP@+tr10+!1"

function pwdchange {
    $user = Read-Host "Enter Username: "
    Set-ADAccountPassword -UserName $user -Password $password -Force 
    return 0   
}

$num = Read-Host "Enter Number of Passwords to Change: " [int]
for ($i = 0; $i -lt $num; $i++) {
    pwdchange
}