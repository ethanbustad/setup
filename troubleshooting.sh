#!/usr/bin/bash

if [[ "$init" != true ]]
then
	. init.sh
fi

options=(
	"Having trouble connecting to the internet"
)

choice=choose("What seems to be the problem?", options)

if [[ "$choice" = 1 ]]
then
	# sudo apt-get install pppoeconf
fi