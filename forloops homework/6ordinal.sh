#!/bin/bash

#this program prints the ordinal numbers from 1st to 100th, with the proper ending (st, nd, th). E.g: 1st, 2nd, 3rd, ...

#looping 100 numbers
for (( i = 1; i < 101; i++ )); do
    #checking ending of the number
    ((end=$i%10))
    #if ends with 1, ending st
    if [[ ($end -eq 1) ]]; then
        echo $i"st"
    #if ends with 2, ending nd
    elif [[ ($end -eq 2) ]]; then
        echo $i"nd"
    #if ends with 3, ending rd
    elif [[ ($end -eq 3) ]]; then
       echo $i"rd"
    #if ends with anything else, ending th
    else
       echo $i"th"
    fi
done
