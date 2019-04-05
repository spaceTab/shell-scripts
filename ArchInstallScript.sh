#! /bin/sh

# set default to use the fastest mirrors

zsh
####
sudo pacman-mirrors -g

# update
# -Su = system update 
# -yy force refresh of all package lists and rebuild. Great for fixing
# corrupted database
sudo pacman -Syyu

#optimize database
sudo pacman-optimize && sync
#install git
sudo pacman -S git

#checking to see if curl is installed
sudo pacman -S curl
#if yes - install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#install node / heroku
sudo pacman -S node.js ; sudo pacman -S heroku

#neofetch
sudo pacman -S neofetch

#install pamac for aur and gui/cli
sudo pacman -S pamac && sudo pamac-cli

##CHROME INSTALLATION
git https://aur.archlinux.org/google-chrome.git
cd Downloads/google-chrome

#build package from source
makepkg -s
#command to build tarballs
sudo pacman -U google-chrome*.tar.xz




#Installing Snapd for snap packages
sudo pacman -S snapd 
#systemd unit that manages the main snap 
#communication socket needs to be enabled
sudo systemctl enable --now snapd.socket
#enable classic snap support with symlink to /var/lib/snapd/snap & /snap
sudo ln -s /var/lib/snapd/snap /snap

#restart to make sure sym-paths are  correct
init 6
