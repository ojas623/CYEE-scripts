apt install samba -y
ufw allow samba
rsync -a smb.conf /etc/samba/smb.conf

service smbd restart