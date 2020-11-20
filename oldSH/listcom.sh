#!/bin/bash
echo $PATH  | tr : '\n' | 
while read e; do 
    for i in $e/*; do
        if [[ -x "$i" && -f "$i" ]]; then     
	#	sed '\/bin\/d'
            echo $i
        fi
    done
done
