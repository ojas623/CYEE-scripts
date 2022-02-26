echo "disabling control-alt-delete"
systemctl mask ctrl-alt-del.target
systemctl daemon-reload
rm /etc/systemd/system/ctrl-alt-del.target
echo "disabled control-alt-delete"

