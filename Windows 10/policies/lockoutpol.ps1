
Write-Output "setting account lockout policy..."
Write-Output Setting the lockout policy
net accounts /lockoutduration:30
net accounts /lockoutthreshold:5
net accounts /lockoutwindow:30
Write-Output "lockout policy set."