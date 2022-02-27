echo "configuring firefox..."

killall firefox
cp ~/CYEE-scripts/Ubuntu/firefox/firefox.sh /usr/bin/firefox
chmod +x /usr/bin/firefox
sudo apt install firefox #update firefox
