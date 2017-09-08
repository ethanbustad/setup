#!/usr/bin/bash

if [[ "$init" != true ]]
then
	. init.sh
fi

# all three required to connect to a cisco-style VPN
sudo apt-get install network-manager-vpnc
sudo apt-get install network-manager-vpnc-gnome
sudo apt-get install vpnc

choice=confirm("Do you want to install Slack?", true)

if [[ "$choice" = true ]]
then
	sudo apt-get install slack-desktop
fi
