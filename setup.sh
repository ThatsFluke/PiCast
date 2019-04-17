#!/bin/sh
echo "Welcome to the PiCast API Setup!"

sleep 1

echo "Checking for updates!"
sleep 1
sudo apt-get update
clear 
echo "Performing any upgrades needed..."
sleep 1
sudo apt-get upgrade
clear
echo "Installing Requirements/Dependencies..."
sleep 1
sudo apt-get install git make -y
sudo apt-get install omxplayer -y
clear
echo "Installing API..."
sleep 1
cd ~
git clone https://github.com/HaarigerHarald/omxiv.git
clear
echo "Installing new drivers..."
sudo apt-get update
sudo apt-get install libjpeg8-dev libpng12-dev
clear
echo "Making API...."
cd ~/omxiv
make ilclient
make 
sudo make install
clear
echo "Finalizing Everything....."
sleep 3
clear
echo "The Setup is complete! In order to enable the Casting, Enable SSH and reboot."
sleep 5
clear
echo "Displaying IP for casting..."
sleep 2
clear
echo "Your IP is:"
hostname -I