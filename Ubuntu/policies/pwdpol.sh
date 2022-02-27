echo "setting password policies..."


echo "setting password length to 14 characters"
sudo passwd -l 14
echo "setting password expiration to 90 days"
sudo passwd -e 90
echo "setting password expiration warning to 7 days"
sudo passwd -w 7
echo "setting password minimum number of digits to 1"
sudo passwd -d 12

echo "setting password complexity to medium"
sudo passwd -c medium
