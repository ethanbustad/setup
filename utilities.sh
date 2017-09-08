#!/usr/bin/bash

if [[ "$init" != true ]]
then
	. init.sh
fi

sudo apt-get install convertall # universal unit converter
sudo apt-get install openprinting-gutenprint # generic printer driver
sudo apt-get install peek # gif screen recorder
sudo apt-get install pinta # image editing tool a la MSPaint
sudo apt-get install samba # required for connecting to windows networks
sudo apt-get install unattended-upgrades # automatically installs security updates
sudo apt-get install whois # internet domain registry querying tool

# codecs
sudo apt-get install gstreamer0.10-plugins-good
sudo apt-get install libavcodec-extra


choice=confirm("Do you want to be able to connect to remote servers/desktops?", false)

if [[ "$choice" = true ]]
then
	sudo apt-get install vinagre
fi

choice=confirm("Do you want to be able to run virtual machines?", true)

if [[ "$choice" = true ]]
then
	sudo apt-get install virtualbox
fi