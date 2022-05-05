Write-Output "Enabling firewall..."
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled True

Write-Output "blocking inbound connections..."
Set-NetFirewallProfile -Name Domain -DefaultInboundAction Block
Set-NetFirewallProfile -Name Public -DefaultInboundAction Block
Set-NetFirewallProfile -Name Private -DefaultInboundAction Block

