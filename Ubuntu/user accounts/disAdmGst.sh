#!/bin/bash

echo "Deleting administrator and guest accounts..."
sudo deluser Administrator
sudo deluser Guest
echo "deleted administrator and guest accounts."
