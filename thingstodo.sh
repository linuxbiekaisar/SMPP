#!/bin/sh

# This command will update & upgrade your system
sudo apt update && sudo apt-get upgrade --fix-missing 

# Install the package build-essential for making the package and checkinstall for putting it into your package manager
sudo apt install build-essential checkinstall

# Install Ubuntu Restricted Extras
sudo apt install ubuntu-restricted-extras

# Automatically Import All Missing Launchpad PPA GPG Keys
sudo add-apt-repository ppa:nilarimogard/webupd8
sudo apt update
sudo apt install launchpad-getkeys
sudo launchpad-getkeys 

# Install kazam
sudo apt install kazam

# Install anydesk 
wget https://download.anydesk.com/linux/anydesk_5.5.1-1_amd64.deb
sudo dpkg -i anydesk_5.5.1-1_amd64.deb
sudo apt install -f

# Install latest Git & Git Configure
sudo add-apt-repository ppa:git-core/ppa
sudo apt update
sudo apt install git
sudo git config --global user.name "YourName"
sudo git config --global user.email youremail@gmail.com

# Install Adobe flash 
sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
sudo apt update
sudo apt install adobe-flashplugin browser-plugin-freshplayer-pepperflash

# Check available upgrade & upgrade uubuntu 
sudo apt list --upgradable
sudo apt upgrade -y

# Force any missing install, autoremove unused package, autoclean, clean update & reboot system
sudo apt -f install 
sudo apt autoremove 
sudo apt -y autoclean 
sudo apt -y clean 
sudo apt update
sudo reboot