
#!/bin/bash

sudo apt-get remove --purge empathy evolution libreoffice-* rhythmbox aisleriot gnome-sudoku ibus ibus-* gnome-mahjongg gnome-mines cheese

sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
sudo sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list

# upgrade
sudo apt-get update
sudo apt-get -y dist-upgrade
sudo apt-get -y autoremove

sudo apt-get install curl wget;

# install necessary things
sudo apt-get install -y steam git zsh guake build-essential vim fcitx transmission mysql-client-5.7 mysql-server-5.7 mysql-workbench openjdk-8-jdk openjdk-8-jre php7.0 php7.0-mysql php7.0-curl php7.0-mbstring php7.0-json php7.0-fpm php7.0-xml php7.0-zip

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
# add shadowsocks-qt5 repository
sudo add-apt-repository -y ppa:hzwhuang/ss-qt5
# add pantheon-files repository
sudo add-apt-repository -y ppa:elementary-os/stable

sudo rm /usr/share/applications/Nautilus.desktop
sudo apt-get update
sudo apt-get install -y --allow-unauthenticated google-chrome-stable paper-icon-theme paper-gtk-theme paper-cursor-theme code shadowsocks-qt5 pantheon-files

cd ~
git clone git@github.com:tevenfeng/boringStuffs.git
cd boringStuffs
sudo dpkg -i netease-cloud-music_1.0.0-2_amd64_ubuntu16.04.deb
sudo dpkg -i sogoupinyin_2.1.0.0086_amd64.deb

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
