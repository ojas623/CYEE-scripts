Write-Output "updating the system"

Start-Job -Name "Windows Updates" -ScriptBlock {
    Install-WindowsUpdate -MicrosoftUpdate -AcceptAll; Get-WuInstall -AcceptAll -IgnoreReboot; Get-WuInstall -AcceptAll -Install -IgnoreReboot
}