echo "setting password policies..."

sudo apt install libpam-pwquality

cp ~/CYEE-Scripts/Ubuntu/policies/pwd/login.defs /etc/login.defs
cp ~/CYEE-Scripts/Ubuntu/policies/pwd/pwquality.conf /etc/security/pwquality.conf
cp ~/CYEE-scripts/Ubuntu/policies/pwd/common-account /etc/pam.d/common-account
cp ~/CYEE-scripts/Ubuntu/policies/pwd/common-auth /etc/pam.d/common-auth
cp ~/CYEE-scripts/Ubuntu/policies/pwd/common-password /etc/pam.d/common-password
cp ~/CYEE-scripts/Ubuntu/policies/pwd/common-session /etc/pam.d/common-session
cp ~/CYEE-scripts/Ubuntu/policies/pwd/su /etc/pam.d/su

echo "password policies set."