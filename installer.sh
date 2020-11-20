#!/bin/zsh

#manjaro installation script

sudo pacman -Syyu

# Create my normal directory structure
cd ~/Documents
mkdir Programming && cd Programming && mkdir Scripts


# Install software
#OMZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"; 

pacman -S --noconfirm discord 
pacman -S --noconfirm telegram
pacman -S --noconfirm pcmanfm

flatpak install flathub com.spotify.Client
