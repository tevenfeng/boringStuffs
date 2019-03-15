
#!/bin/bash

# remove unuseful stuffs
sudo apt-get remove --purge empathy evolution libreoffice-* rhythmbox aisleriot gnome-sudoku ibus ibus-* gnome-mahjongg gnome-mines cheese

# upgrade
sudo apt-get update
sudo apt-get -y dist-upgrade
sudo apt-get -y autoremove

# install bumblebee
# OPTIONAL for desktops
# RECOMMENDED for laptops
# sudo apt-get install -y bumblebee bumblebee-nvidia primus linux-headers-generic

# install necessary things for basic developement
sudo apt-get -y install curl wget git build-essential vim fcitx zsh guake;

# install mysql, jdk, php
# sudo apt-get install -y mysql-client-5.7 mysql-server-5.7 mysql-workbench openjdk-8-jdk openjdk-8-jre php7.0 php7.0-mysql php7.0-curl php7.0-mbstring php7.0-json php7.0-fpm php7.0-xml php7.0-zip

# add google-chrome repository
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

# add paper-gtk-theme repository
sudo add-apt-repository ppa:snwh/pulp -y

# add vscode repository
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

# add shadowsocks-qt5 repository
sudo add-apt-repository -y ppa:hzwhuang/ss-qt5

sudo apt-get update
sudo apt-get install -y --allow-unauthenticated google-chrome-stable code
sudo apt-get install -y paper-icon-theme paper-gtk-theme paper-cursor-theme shadowsocks-qt5
sudo rm /usr/share/applications/Nautilus.desktop

# cd ~
# git clone git@github.com:tevenfeng/boringStuffs.git
# cd boringStuffs
# sudo dpkg -i netease-cloud-music_1.0.0-2_amd64_ubuntu16.04.deb
# sudo dpkg -i sogoupinyin_2.1.0.0086_amd64.deb

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
