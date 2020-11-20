#! /bin/sh

sudo cp ~/.zshrc ~/Documents/Programming/dotfiles
cd ~/Documents/Programming/dotfiles

git add .zshrc
git commit -m "automated back up of zshrc"
git push origin master
