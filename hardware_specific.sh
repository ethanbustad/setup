#!/usr/bin/bash

if [[ "$init" != true ]]
then
	. init.sh
fi

# broadcom wireless drivers
sudo apt-get install firmware-b43-installer

# home brother printer?
sudo apt-get install brscan4
sudo apt-get install brscan-skey

# work brother printer?
mfcl8850cdwcupswrapper:i386
mfcl8850cdwlpr:i386