#!/bin/bash

{ echo "$(spotify-now -i " <b>%title" -e "<b>" -p " paused<b>" | awk -v len=40 '{ if (length($0) > len) print substr($0, 1, len-3) "..."; else print; }' | tr -d '&' | awk '{print $0 "</b>"}')"; echo "$(spotify-now -i '%artist' -p ' ' -e ' ')"; } | tr "\n" " "
