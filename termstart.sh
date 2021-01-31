#!/bin/bash
# All of these commands can befound pre-installed in ~/.bin (On arcolinux);

#array[0]="spaceinvaders"
#array[1]="colorwheel"
#array[2]="pfetch"
#array[3]="darthvader"
#array[4]="elfman"
#array[5]="bonsai-tree -L 19"
##array[6]="dog"
#array[7]="unix"
#array[8]="monster"
#array[9]="dna | lolcat"
#array[10]="pfetch"

array[0]="pfetch"
array[1]="elfman"
array[2]="bonsai-tree -L 17"
array[3]="thebat"


size=${#array[@]}
index=$(($RANDOM % size))

${array[$index]} #| lolcat

