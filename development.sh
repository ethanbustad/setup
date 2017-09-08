#!/usr/bin/bash

if [[ "$init" != true ]]
then
	. init.sh
fi

sudo apt-get install ant
sudo apt-get install atop
sudo apt-get install git-core
sudo apt-get install git-gui
sudo apt-get install gitk
sudo apt-get install gradle
sudo apt-get install lib32stdc++6 # C++ runtime library
sudo apt-get install lm-sensors # hardware monitoring tool
sudo apt-get install meld # diff tool
sudo apt-get install mysql-server
sudo apt-get install mysql-workbench
sudo apt-get install nodejs
sudo apt-get install npm

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java7-installer
sudo apt-get install oracle-java8-installer
sudo apt-get install oracle-java8-set-default

sudo apt-get install python-pip
sudo apt-get install smartgit
sudo apt-get install sublime-text
sudo apt-get install vim
sudo apt-get install zeal # docs browser

# remap caps lock to control