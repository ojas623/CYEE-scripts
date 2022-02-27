echo "setting audit policies..."
apt install auditd audispd-plugins
systemctl --now enable auditd
auditd restart
auditd start