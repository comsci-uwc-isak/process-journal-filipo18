#!/bin/bash

(( x=(RANDOM%10) + 1))

try=0
win=false
echo $x

while [[ $win ]
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
