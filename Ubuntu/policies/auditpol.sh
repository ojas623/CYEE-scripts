echo "setting audit policies..."
cp ~/CYEE-scripts/Ubuntu/policies/auditd.conf /etc/audit/auditd.conf
apt install auditd audispd-plugins
apt install rsyslog
systemctl --now enable auditd
systemctl --now rsyslog
auditd restart
auditd start