#SMB (server message block) is a network file sharing protocol 
#the protocol allows applications to read andwrite to files on a server
#To secure and enable SMB2, run the powershell code below

function SMBv2 {
    Write-Host "Enabling SMBv2"
    Write-Host "make sure SMBv1 is disabled."

    Set-SmbServerConfiguration –EncryptData $true
    # ^enables SMB encryption on the entire file server.

    Set-SmbServerConfiguration -EnableSecuritySignature $true
    # ^enables SMB signing on the entire file server.

    Set-SmbServerConfiguration –RequireSecuritySignature $true
    # ^requires SMB signing on the entire file server.

    Set-NetOffloadGlobalSetting -NetworkDirect Disabled $true
    # ^disables Network Direct

    Set-SmbServerConfiguration –RejectUnencryptedAccess $true 
    # ^rejects unencrypted connections

    Write-Host "Make sure TCP Port 445 is blocked."
    # ^ blocking outbound SMB traffic

    Set-SmbServerConfiguration –EnableSMB2Protocol $true
    # ^enables SMBv2 on the entire file server.
    Write-Host "Make sure the MSFT Network server: digitally sign communications GP is enabled"

    Set-SmbServerConfiguration -AutoShareServer $False -AutoShareWorkstation $False 
    # ^disables default server and workstation servers

    Set-SmbServerConfiguration -ServerHidden $False -AnnounceServer $False -Confirm:$false
    # ^disables server announcements

    Set-SmbServerConfiguration -EnableStrictNameChecking $true
    # ^enables strict name checking for incoming connections

    Set-SmbServerConfiguration -EnableOplocks $false 
    # ^disables opportunistic locking (proccess that allows multiple processes to lock a file but not for the client)

    Set-SmbServerConfiguration -EnableAuthenticateUserSharing $true 
    # ^allows authenticated users to share files

    Set-SmbServerConfiguration -EnableGuestAccess $false
    # ^disables guest access

    Write-Host "Disable guest access for SMB"
    # ^admin templates > network > lanman workstation > right click enable insecure guest logons > edit > disable

    




}

#https://docs.microsoft.com/en-us/windows-server/storage/file-server/smb-secure-traffic
#https://docs.microsoft.com/en-us/windows-server/storage/file-server/smb-security
