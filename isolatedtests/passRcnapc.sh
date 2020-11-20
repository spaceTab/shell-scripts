#!/bin/zsh

#Mass rename files in a directory with specificed characters
echo "Character you'd like to Remove"
read remove
echo "$remove will be removed, What would you like to replace it with.you"
read replace
echo "$remove will be REPLACED with $replace"
for file in *;

do mv "$file" `echo $file | tr '$(remove)' '$(replace)'` ; done
