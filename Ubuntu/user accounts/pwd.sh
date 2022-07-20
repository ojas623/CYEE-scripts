#!/bin/bash

echo "make sure you're an admin"

echo "what is the name of the user who's password you want to change"
read -r user
passwd "$user" 