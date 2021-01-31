#!/bin/bash
killall volumeicon
bluetoothctl disconnect
sleep 0.1
volumeicon &
