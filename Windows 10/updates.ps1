Write-Output "updating the system"

Start-Job -Name "Windows Updates" -ScriptBlock {
    Install-WindowsUpdate -MicrosoftUpdate -AcceptAll; Get-WuInstall -AcceptAll -IgnoreReboot; Get-WuInstall -AcceptAll -Install -IgnoreReboot
}

Set-Content config wuauserv start = auto
net start wuauserv
