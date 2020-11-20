#!/bin/zsh

# DESTINATION OF HARDRIVE
#DESTINATION=/run/media/pg/BACKUPHD/ #this path works for Desktop environments like Gnome

#Use this path if drive is mounted. ( in XFCE must use this path, after enabling automount for script to work on login )
DESTINATION=/mnt/BACKUPHD/ #Path to get around XFCE's non-automounting drives

# This conditional also works for DE's like gnome, but not for XFCE
if ls "$DESTINATION" 1> /dev/null 2>&1; then 

# in XFCE change conditional for this, as harddrive must be mounted.

#if lsblk -f | grep -wq "BACKUPHD"; then

# ECHO DATE OF BACKUP INTO TXT FILE
	echo "Script was backed up successfully On: $(date)" > ~/Documents/Programming/Scripts/backup.log

# DIRECTORIES
	cp -rf ~/Documents $DESTINATION
	cp -rf ~/Pictures $DESTINATION
	cp -rf ~/Videos $DESTINATION
	cp -rf ~/Music $DESTINATION
	cp -rf ~/.runelite/screenshots $DESTINATION
# FILES
	cp -rf ~/.zshrc $DESTINATION
#	cp -rf ~/.config/autostart/backup.desktop $DESTINATION
# ADDONS ( CLASSIC )
#	cp -rf ~/LinktoAddOns $DESTINATION

	notify-send -t 10500 "BACKING UP HARDRIVE ⚒️" "COMPLETED!"
else
	notify-send --urgency=critical -t 10500 "DEVICE NOT FOUND" "Please Plug-In"
fi
