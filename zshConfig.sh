#!/bin/zsh

NOW=$(date +"%m-%d-%Y %r") export NOW # GET DATE

# MY ALIASES
alias cb='cd ..' 
alias cb.='cd ...'
alias lsa='ls -a' 
alias nv='nvim'
alias svim='sudo nvim'
alias pac='sudo pacman'

#Pac command to remove packages, and dependancies unless used by other APPLICATIONS
alias pacrmv='sudo pacman -Rs'

alias mkf='mkdir -pv' 
alias zconf='sudo nvim ~/.zshrc' 
alias hlt='shutdown -h now' 
alias ch755='chmod +755'
alias chx='chmod +x'
alias rmr='sudo rm -r'
 
#GLOBAL npm package to start live-code server
alias server="browser-sync start --server --files"

# PAC OPTIONS - Q:QUERY q:QUIET d:DEPENDANCY t:NOT NEEDED
alias findOrphans='sudo pacman -Qqdt'
alias rmOrphans='sudo pacman -Rsun $(pacman -Qqdt)'
alias shufStr='shuf -n 1 -e'

# SCRIPTS & APPLICATIONS
alias SH='~/Programming/shell-scripts' 
alias PROJ='~/Programming/Projects' 
alias rl='~/Applications ; ./RuneLite.AppImage & ; disown ./RuneLite; cd "$OLDPWD"'
alias MEGA='~/Applications ; ./megasync & ; disown ./megasync ; cd "$OLDPWD"'
alias convert='~/Programming/shell-shell-scripts/convertRename.sh'

# SHORTCUTS TO DIRECTORIES
alias pro='~/Programming' 
alias PIC='~/Pictures' 
alias docs='~/Documents'
alias dl='~/Downloads'

# FUN
alias tclock='tty-clock [ -tc ]'
alias parrot='curl parrot.live'
alias rolled='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'

# CURL HELPERS
alias news='curl getnews.tech/'
alias ip4='curl -4 ifconfig.co'
alias ip6='curl -6 ifconfig.co'
alias cheats='curl cheat.sh/'

# ZSH BUILT-INS
chpwd() ls


# PERSONAL HELPER FUNCTION
# mkcd() {
#        if [ $# != 1 ]; then
#                echo "Usage: mkcd <dir>"
#        else
#                mkdir -p $1 && cd $1
#        fi
# }


# SHELL DISPLAYER
#echo -e "\n\n"
#echo -e "\t $USER // Manjaro"
#echo -e "\t WM: $XDG_CURRENT_DESKTOP"
#echo -e "\t $(uptime -p)"
#echo -e "\t Packages: $(pacman -Q | wc -l)"
#echo -e "\t Kernel: $(uname -r)"
#echo -e "\t Shell: $SHELL"
#echo -e "\t $(date) \n"

# COLORED MANPAGES
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
