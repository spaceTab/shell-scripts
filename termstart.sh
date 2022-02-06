#!/bin/bash
# All of these commands can befound pre-installed in ~/.bin (On arcolinux);

array[0]="elfman"
array[1]="bonsai-tree -L 17"
array[2]="sfetch"
array[3]="ufetch"
array[4]="pokemon-colorscripts -n togepi"
array[5]="cat /home/j/booty.txt"
#array[6]="cat /home/j/booba.txt"
#array[8]="pokemon-colorscripts -n dwebble"
#array[4]="colortest-slim"
#array[0]="pfetch"

size=${#array[@]}
index=$(($RANDOM % size))

#echo ${array[$index]}
${array[$index]}
