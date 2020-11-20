#!/bin/zsh

#######################################################
#    Script that will convert MP4 Into MKV            #
#    & will then Rename Accordingly                   #
#    Indescriminant of video's name length            #
#     -Author: Jake P. Nov. 6/2020 last edited        #
#######################################################

#Copy in the name of file you want to conver
inputVideo=''
read inputVideo

outputVideo=$inputVideo.mkv #2nd Variable to store as output video, for renaming process

# Ffmpeg command to convert your video from MP4 -> MKV
ffmpeg -i $inputVideo -vcodec copy -acodec copy $outputVideo; 

echo $outputVideo #Tester to make sure output variable is working.

# Looping through newly created MKV file, To find length of name.
# loop will remove the last 7 digits of file name to remove the old name
# then properly labels it as a .mkv file. 
# Example: inputVideo = tvshow.mp4 -> gets converted & named tvshow.mp4.mkv by ffmpeg
# This is my workaround - still a bit wonky.
for i in $outputVideo;
    do mv -i "$i" "${i%???????}mkv"; done

#Added functionality of removing the original MP4 ffmpeg copies.

rm -r $inputVideo;



# Reminder for later use
# a lot of these wonky work arounds are solely due to the script being
# able to read in any file you copy into it.
# the naming issue I ran into is due to this fact. as if you're doing a show series
# each episode name is different so this removes having to retype each episode name
# in completley just to fix the file extension not switching after conversion   
