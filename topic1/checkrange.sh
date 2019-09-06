#!/bin/bash

#this script checks the range of the number enetered 
#by the user in [0,5]

echo "Enter an integer and press enter"

read num 

if [[ ($num -gt 0 && $num -le 5) ]]; then
echo "the number is valid score"
else
echo "The number is out of range" 

fi

