read -p "Do you want SSH installed? y/n: "
if [[ $REPLY =~ ^[Nn]$ ]]
then
  apt-fast autoremove -y --purge openssh-server ssh
else
  sudo  apt-fast install openssh-client -y
  find /etc/ssh -xdev -type f -name 'ssh_host_*_key' -exec chown root:root {} \;
  find /etc/ssh -xdev -type f -name 'ssh_host_*_key' -exec chmod u-x,go-rwx {} \;
  find /etc/ssh -xdev -type f -name 'ssh_host_*_key.pub' -exec chmod u-x,go- wx {} \;
  find /etc/ssh -xdev -type f -name 'ssh_host_*_key.pub' -exec chown root:root {} \;
  cp ~/Linux/ssh/sshd_config /etc/ssh/sshd_config
  /usr/sbin/sshd -t
  systemctl restart sshd.service
  systemctl reload sshd
fi