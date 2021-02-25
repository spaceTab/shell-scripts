#!/bin/bash

MAC_ADDR=40:EF:4C:C6:D6:C5

if bluetoothctl info "$MAC_ADDR" | grep 'Connected: yes' -q; then
  pkill volumeicon
  bluetoothctl disconnect "$MAC_ADDR"
  sleep 0.1
  volumeicon &
else
  pkill volumeicon
  bluetoothctl connect "$MAC_ADDR"
  sleep 2.5 #sleep before running volumeicon so it doesn't load before bluetooth
  volumeicon &
fi
