#!/bin/bash

#killall volumeicon

if [[ $(bluetoothctl scan on) | $(grep "Connected: yes") == true ]]; then
	echo "connected";
fi

#bluetooth-autoconnect
#sleep 0.1
#volumeicon &
