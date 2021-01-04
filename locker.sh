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


xidle -timeout 10 -program  '/usr/bin/betterlockscreen -l dimblur'
