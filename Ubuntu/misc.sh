echo "disabling control-alt-delete"
systemctl mask ctrl-alt-del.target
systemctl daemon-reload
rm /etc/systemd/system/ctrl-alt-del.target
echo "disabled control-alt-delete"

echo "updating grub"
update-grub
echo "updated grub"

echo "installing silversearcher-ag"
apt install silversearcher-ag
echo "installed silversearcher-ag"

echo "installig curl"
apt-get install curl -y