#!/bin/bash
# All of these commands can befound pre-installed in ~/.bin (On arcolinux);


array[0]="pfetch"
array[1]="elfman"
array[2]="bonsai-tree -L 17"
array[3]="alpha"
#array[4]="nerdfetch \n"
#array[5]="owofetch"
#array[6]="uwufetch"
array[4]="sfetch"
array[5]="afetch"
array[6]="arcod"
array[7]="colortest-slim"
array[8]="ufetch"

size=${#array[@]}
index=$(($RANDOM % size))

echo ${array[$index]}
${array[$index]}
