#!/bin/env sh

echo "grabbing fastest mirrors"
sudo pacman-mirrors --fasttrack 5

echo "Force Syncing database => To check for package errors"
echo "Then updating system."
sudo pacman -Syyu

echo "Safely removing old package cache" \n
paccache -rvk3
