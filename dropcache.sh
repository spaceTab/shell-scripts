###########################################################################
#                               DESCRIPTION                               #
#                                                                         #
# Script to drop memory cache dentries and iNodes                         #
# developed by Jake Plaisted                                              #
# the script will flush (sync cmnd) file system buffer                    #
# it will then write to kernals drop_cache and will clean cache without   #
# killing any running  app/service  -- the command echo is doing the      #
# to write to the kernel drop_cache.                                      #
# kernel drop_cache [PATH] /proc/sys/vm/drop_caches                       #
###########################################################################
############################### USE CASES #################################
# when you have have to clear the drop cache  & clear up ram              #
# 		     Will Slow sys for 2/3 seconds                        #
# echo 1 > ::  will clear PAGE CACHE ONLY!                                #
# echo 2 > ::  will clear DENTRIES & iNODES!                              #
# echo 3 > ::  will clear PAGE CACHE/DENTRIES & iNodes!                   #
#  	       -> echo 3 > IS NOT RECCOMENDED for production!             #
#              -> unless you know what you're doing                       #
###########################################################################

#uncomment shebang line to !#/bin/bash if using a BASH shell
#!#/bin/bash
!#/bin/zsh

figlet dropping
figlet page cache
sleep 0.1
# drops page cache
sync; echo 1 > /proc/sys/vm/drop_caches

echo " "
figlet dropping
figlet dentries/inodes
sleep 0.1
# drop dentries and inodes
sync; echo  2 > /proc/sys/vm/drop_caches

# drop dentries inodes & page cache
#sync; echo 3 > /proc/sys/vm/drop_caches
figlet RAM cache
figlet cleared!

#if you want to clear swap cache as well
#echo 3 > /proc/sys/vm/drop_cache && swapoff -a && swapon -a && figlet swap & ram cache cleared
