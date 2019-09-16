#!/bin/bash

#program has the same problem as average.sh
#we still din't figgured out how to make 
#while loop with logical operator true false !
#ASK TEACHER!!!



(( x=(RANDOM%10) + 1))

try=0
win=false
echo $x

while [ $win == false ]
    do
        echo $win
        echo -n "Enter a number: "
        read num
        ((try ++))
        if [ $num -gt $x ];then
            echo "too big"
        elif [ $num -eq $x ];then
            echo "You won, it took you " $try "try"
            win=true
            echo $win
        else 
            echo "too small"
        fi



    done
echo "GAME OVER"
exit 
