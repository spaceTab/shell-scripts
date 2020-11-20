#!/bin/zsh

inputVideo=''
read inputVideo

outputVideo=$inputVideo.mkv

ffmpeg -i $inputVideo -vcodec copy -acodec copy $outputVideo; 

echo $outputVideo
echo "OUT PUT HERE"
for i in $outputVideo;
    do mv -i "$i" "${i%???????}mkv"; done
    

rm -r $inputVideo;
