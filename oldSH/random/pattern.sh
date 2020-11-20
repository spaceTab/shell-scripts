#! /bin/bash

MAX_NUM=0;

echo -n "Enter Number Between 5-9  : "
read MAX_NUM

if ! [ $MAX_NUM -ge 5 -a $MAX_NUM -le 9 ] ; then
    echo "Invalid Number - Try Again"
    exit 1
fi
clear
for (( i=1; i<=MAX_NO; i++ )) do     for (( s=MAX_NO; s>=i; s-- ))
    do
       echo -n " "
    done
    for (( j=1; j<=i;  j++ ))     do      echo -n " ."      done     echo "" done ###### Second stage ###################### 
    for (( i=MAX_NO; i>=1; i-- ))
do
    for (( s=i; s<=MAX_NO; s++ ))
    do
       echo -n " "  
    done
    for (( j=1; j<=i;  j++ ))
    do
     echo -n " ."
    done
    echo ""
done