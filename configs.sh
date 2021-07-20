#!/bin/env bash

function ChooseConfig {
	echo "What configuration file would you like to edit"
	read CONF

	case $CONF in
		kitty)
			nvim ~/.config/kitty/kitty.conf
			;;
		picom)
			nvim ~/.config/picom.conf
			;;
		openbox | OB)
			nvim ~/.config/openbox/
			;;
		tint2)
			nvim ~/.config/tint2/
			;;
		zsh)
			nvim ~/.zshrc-personal
			;;
		neovim | nvim | nv)
			nvim ~/.config/nvim/
			;;
		theme)
			sudoedit /usr/share/themes/holygrayl/openbox-3
			;;
		sddm)
			sudoedit /usr/share/sddm/themes/arcolinux-sugar-candy/theme.conf
			;;
		*)
			echo -n "Unknown match  -->  "
			;;
	esac
}

ChooseConfig
