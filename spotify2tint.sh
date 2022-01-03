#!/bin/bash
#Original unicode symbols for Playing:  -- Spotify no open:  
#Used to say pause after the 2 lined unicode
{ echo "$(spotify-now -i "♫ <b>%title" -e "♬ ♪<b>" -p "♩  <b>" | awk -v len=40 '{ if (length($0) > len) print substr($0, 1, len-3) "..."; else print; }' | tr -d '&' | awk '{print $0 "</b>"}')"; echo "$(spotify-now -i '%artist ♫'  -p ' ' -e ' ')"; } | tr "\n" " "
