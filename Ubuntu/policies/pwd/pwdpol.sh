echo "setting password policies..."

sudo apt install libpam-pwquality

rsync -a login.defs /etc/login.defs
rsync -a pwquality.conf /etc/security/pwquality.conf
rsync -a common-account /etc/pam.d/common-account
rsync -a common-auth /etc/pam.d/common-auth
rsync -a common-password /etc/pam.d/common-password
rsync -a common-session /etc/pam.d/common-session
rsync -a su /etc/pam.d/su

echo "password policies set."