#!/bin/bash

# Apps to Install Script

# System Update
sudo apt update

# Apps
sudo apt install software-properties-common apt-transport-https wget -y
sudo apt install -y htop
sudo apt install -y curl
sudo apt install -y git
sudo apt install -y nodejs


# Finishing Things Up
## System Update and Upgrade
sudo apt update
sudo apt install --fix-missing -y
sudo apt upgrade --allow-downgrades -y
sudo apt full-upgrade --allow-downgrades -y
## System Clean Up
sudo apt install -f
sudo apt autoremove -y
sudo apt autoclean
sudo apt clean

# End of Script

# Display Installation Complete Message
echo "All done :)" 
echo "Please, restart the computer, clean up your system using BleachBit (if you want to) and then restart the computer again."
