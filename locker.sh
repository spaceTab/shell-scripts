#!/bin/bash

# Simple script to lock screen
# Using xprintidle & arco linux's betterlockscreen

#while true; do
#    if [[ `xprintidle` -ge 5000 ]]; then
#        notify-send "IDLE ALERT" "Screen will be locked!"
#        sleep 5 
#        if [[ `xprintidle` -ge 5100 ]]; then
#            betterlockscreen -lr 
#        fi
#    fi
#    sleep 2;
#done 


#xidle -timeout 10 -program  '/usr/bin/betterlockscreen -l dimblur' && killall locker.sh
#exec --no-startup-id 
#xidlehook --timer 10 "brightnessctl set 600" "brightnessctl set 1500" 

#exec --no-startup-id 
# No Audio, fullscreen option
#xidlehook --not-when-audio --not-when-fullscreen --timer 10 "betterlockscreen -l" ''

# Just after X time
xidlehook --timer 15 "betterlockscreen -l" ''
