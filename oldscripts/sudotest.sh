#!/bin/zsh

# Ways I was testing to have a user be prompted for
# Sudo Password  --
# using -s on the read statement will hide
# the users characters as they type password

[ "$UID" -eq 0 ] || exec sudo bash "$0" "$@"
#better version of above
[ "$UID" -eq 0 ] || exec sudo "$0" "$@"

[ "$UID" -eq 0 ] || exec sudo "$0" "$@" && echo -n "sudo bash what: "
read -s WHAT
sudo $WHAT


if [[ $EUID -ne 0 ]]; then
   #echo "This script must be run as root, use sudo "$0" instead" 1>&2
  exec sudo 
   echo "no root"
   exit 1
   else 
    echo "got sudo";
fi