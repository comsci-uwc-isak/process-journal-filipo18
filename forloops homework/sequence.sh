#!/bin/bash

#this program that prints 1000 numbers in the sequence 012345601234560...

#setting starting variable
num=-1

#looping 1000times
for (( i = 0; i < 1000; i++ )); do
    ((num++))

    #reseting num to 0 when it reaches 6
    if [ $num -gt 6 ]; then
      num=0
    fi

    #printing sequence to the user in one line
    echo -n $num
done