#!/bin/bash

# Apps to Install Script

# System Update
sudo apt update

# Apps
sudo apt install software-properties-common apt-transport-https wget gpg -y
sudo apt install -y htop
sudo apt install -y curl
sudo apt install -y git
sudo apt install -y nodejs
sudo apt install -y default-jre
sudo apt install -y gnome-tweaks
sudo apt install -y steam

cd ~/Downloads

# chrome
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

# vs code
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update
sudo apt install -y code

# android studio
sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386
sudo add-apt-repository ppa:maarten-fonville/android-studio
sudo apt update -y
sudo apt install android-studio -y

# flutter
cd ~
mkdir Dev
cd Dev
git clone https://github.com/flutter/flutter.git
echo 'export PATH="/home/cedvdb/Dev/flutter/bin"' >> ~/.bashrc
sudo apt install -y clang cmake ninja-build pkg-config libgtk-3-dev

# keepass
sudo add-apt-repository ppa:phoerious/keepassxc
sudo apt update
sudo apt install
sudo apt install -y keepassxc

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
