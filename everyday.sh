#!/usr/bin/bash

if [[ "$init" != true ]]
then
	. init.sh
fi

##
## Browsers
##

function chrome() {
	wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
	sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
	sudo apt-get update
	sudo apt-get install google-chrome-stable
	xdg-settings set default-web-browser google-chrome.desktop
}

function chromium() {
	sudo apt-get install chromium-browser
	xdg-settings set default-web-browser chromium-browser.desktop
}

##
## Main
##

options=(
	"Chrome"
	"Chromium"
	"Firefox"
)

choice=choose("Which would you like to be your primary browser?", options)

if [[ "$choice" = 1 ]]
then
	chrome()
elif [[ "$choice" = 2 ]]
	chromium()
fi

choice=confirm("Do you want to install Skype?", true)

if [[ "$choice" = true ]]
then
	sudo apt-get install skypeforlinux
fi
