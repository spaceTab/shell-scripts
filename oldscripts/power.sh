#!/bin/zsh

## udev rule, that allows for command TLP to automatically
## start when power to the laptop is unplugged

if on_ac_power ; then
    echo "Thonkpud is charging"
else
    sudo tlp start
    echo "Setting up battery monitors"
fi