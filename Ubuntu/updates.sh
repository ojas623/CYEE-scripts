#!/bin/bash

echo "updating system"
sudo apt update
sudo apt-get upgrade
echo "system updated"

echo "rebooting system"
sudo reboot

