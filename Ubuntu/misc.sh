#!/bin/bash

echo "disabling control-alt-delete"
systemctl mask ctrl-alt-del.target
systemctl daemon-reload
rm /etc/systemd/system/ctrl-alt-del.target
echo "disabled control-alt-delete"

echo "updating grub"
update-grub
echo "updated grub"

echo "installing silversearcher-ag"
sudo apt install silversearcher-ag
echo "installed silversearcher-ag"

echo "installig curl"
sudo apt install curl

echo "disabling autofs"
sudo apt purge autofs

echo "installing git"
sudo apt install git
