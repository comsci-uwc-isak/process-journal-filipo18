#!/bin/bash
#This program prints out first 100 prime numbers


#storing working variables
    #this is number we are checking
number=0
    #this variable counts factors of a number
check=0
    #this variable counts variables prined
loop=0


while [ $loop -lt 101 ]; do
    ((number++))
    check=0
    #run loop from 2 to the number we are checking
    for ((i=2; i<$number; i++))
    do
        #divide number we are checking with every $number from 2 to $number
        ((test=$number % $i))
        #add 1 everytime $i is factor of $number, if number has no factors number is prime
        if [[ ($test -eq 0) ]]; then
        ((check++))
        fi
    done

    #checking if number is prime
    if [[ ($check -eq 0) ]]; then
        echo $number
        ((loop++))
    fi
done
echo "This are first 100 prime numbers."
