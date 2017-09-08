#!/usr/bin/bash

if [[ "$init" != true ]]
then
	. init.sh
fi

##
## OS lookalikes
##

function mac() {
	echo "Too bad! Not implemented yet."
}

function windows() {
	add-apt-repository ppa:noobslab/themes
	apt-get update
	apt-get install dark-aurora

	# more stuff
}

##
## Main
##

options=(
	"Make linux look and feel like Mac OSX"
	"Make linux look and feel like Windows"
)

choice=choose("How would you like your system to behave?", options)

if [[ "$choice" = 1 ]]
then
	mac()
elif [[ "$choice" = 2 ]]
	windows()
fi