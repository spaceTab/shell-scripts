#!/bin/bash
# All of these commands can befound pre-installed in ~/.bin (On arcolinux);

array[0]="pfetch"
array[1]="elfman"
array[2]="bonsai-tree -L 17"
array[3]="sfetch"
array[4]="colortest-slim"
array[5]="ufetch"
array[6]="pokemon-colorscripts -n togepi"
array[7]="cat /home/j/booty.txt"
array[8]="pokemon-colorscripts -n dwebble"

size=${#array[@]}
index=$(($RANDOM % size))

#echo ${array[$index]}
${array[$index]}
