#!/bin/zsh

input=''

read input && echo input;

ffmpeg -i $input -vcodec copy -acodec copy $input.mkv 
