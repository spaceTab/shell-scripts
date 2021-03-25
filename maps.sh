#!/bin/bash

COUNTRY=''
read $COUNTRY

	if [[ "${COUNTRY}" -eq "africa" ]]; then
		feh ~/Pictures/worldmaps/map-of-africa.png
	elif [[ "${COUNTRY}" -eq "asia" ]]; then
		feh ~/Pictures/worldmaps/map-of-east-asia.png
	elif [[ "${COUNTRY}" -eq "middle-east" ]]; then
		feh ~/Pictures/WorldMap.png
	else
		ristretto ~/Pictures/worldmaps/WorldMap.png
	fi

	
#	read $MAP
#	echo $MAP
#
#	case $MAP in
#
#		africa)
#			feh /home/pg/Pictures/worldmaps/map-of-africa.png
#			;;
#
#		asia)
#			feh /home/pg/Pictures/worldmaps/map-of-east-asia.png
#			;;
#
#		*)
#			feh /home/pg/Pictures/worldmaps/WorldMap.png
#			;;
#	esac
#
