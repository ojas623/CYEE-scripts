#!/bin/bash
echo "setting audit policies..."

rsync -a audit.rules /etc/audit/rules.d/audit.rules

apt install auditd audispd-plugins
apt install rsyslog
systemctl --now enable auditd
systemctl --now rsyslog
auditd restart
auditd start