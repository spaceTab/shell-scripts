#!/bin/sh

#Simple function to make a directory and then CD into the directory

makeCd() {
	if [ $# != 1 ]; then
		echo "Usage: mkcd <dir>"
	else
		mkdir -p $1 && cd $1
	fi
}
