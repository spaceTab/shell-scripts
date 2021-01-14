#! /bin/zsh

cp ~/.vimrc ~/Documents/Programming/dotfiles/vim

echo "Filed copyed to repository"
echo "commiting file to github"

git add .
git commit -m "automated back up of vim config -- vimrc file"
git push origin master

echo "Back up complete"
