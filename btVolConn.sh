#!/bin/bash

killall volumeicon
bluetooth-autoconnect
sleep 0.1
volumeicon &
