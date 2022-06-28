#!/bin/bash

echo "Enter the name of the user you want to delete:"
read -r user
sudo deluser "$user"
echo "deleted $user"