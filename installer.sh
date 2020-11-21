#!/bin/zsh

#manjaro installation script

sudo pacman -Syyu
pacman -S --noconfirm discord telegram yay fish

#Create my directory structure
mkdir -v Programming && cd Programming;
git clone git@github.com:spaceTab/shell-scripts.git;
git clone git@github.com:spaceTab/Bento.git;

cd ~/Videos ; mkdir -v Media

cd /run/media/pg/2B2F-4D27 && cp -r Music ~/Music && 
  cp -r Wallpapers ~/Pictures &&
  cp -r theming ~/Downloads

# Oh my ZSH install
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"; 



