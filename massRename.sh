#!/bin/zsh

#Mass rename files in a directory with specificed characters
#echo "type Path to directory you want to use"
#read path
remove=''
replace=''
echo "Character you'd like to Remove"
read $remove
echo "$remove will be Removed"
read $replace
echo "$remove will be REPLACED with $replace"
for file in *;

do mv "$file" `echo $file | tr '$(remove)' '$(replace)' `
