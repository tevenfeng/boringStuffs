#!/bin/bash

#sudo apt-get remove --purge empathy evolution libreoffice-* rhythmbox aislerion gnome-sudoku ibus ibus-* 

# upgrade
sudo apt-get update
sudo apt-get -y dist-upgrade
sudo apt-get -y autoremove

# install necessary things
sudo apt-get install -y steam git curl zsh wget build-essential vim fcitx transmission mysql-client-5.7 mysql-server-5.7 mysql-workbench openjdk-8-jdk openjdk-8-jre

# install bumblebee
sudo apt-get install -y bumblebee bumblebee-nvidia primus linux-headers-generic
# add google-chrome repository
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
# add paper-gtk-theme repository
sudo add-apt-repository ppa:snwh/pulp -y
# add vscode repository
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt-get update
sudo apt-get install -y google-chrome-stable paper-icon-theme paper-gtk-theme paper-cursor-theme code

cd ~
git clone git@github.com:tevenfeng/boringStuffs.git
cd boringStuffs
sudo dpkg -i netease-cloud-music_1.0.0-2_amd64_ubuntu16.04.deb
sudo dpkg -i sogoupinyin_2.1.0.0086_amd64.deb
