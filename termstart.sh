#!/bin/bash
# All of these commands can befound pre-installed in ~/.bin (On arcolinux);

array[0]="spaceinvaders"
array[1]="colorwheel"
array[2]="mouseface"
array[3]="darthvader"
array[4]="elfman"
array[5]="bonsai-tree"
array[6]="dog"
array[7]="unix"
array[8]="illumina"
array[9]="dna"
size=${#array[@]}
index=$(($RANDOM % size))

${array[$index]} #| lolcat

