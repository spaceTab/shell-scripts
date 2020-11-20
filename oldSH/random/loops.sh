#!/bin/zsh

for i in 1 2 3 4 5
do
    echo "looping through $i"
done

#unsure as to why this prints out other files within the directory
for i in jacob 5 * 2 owns
do
    echo "looping i is set to $i"
done

TEST_STRING=fuckyea

while [ "$TEST_STRING" != "fuckno" ]
do
    echo "Please type fuckno to exit"
    read TEST_STRING
    echo "you typed: $TEST_STRING"
done

while read f
do
    case $f in
        hello)       echo English    ;;
        howdy)       echo American   ;;
        gday)        echo Australain ;;
        bonjour)     echo French     ;;
        "guten tag") echo German     ;;
        *)           echo Unknown Langauge: $f
        ;;
    esac
    if [ $f > 3 ]
        do
            break;
        done
done >> outputs.txt
cat outputs.txt

