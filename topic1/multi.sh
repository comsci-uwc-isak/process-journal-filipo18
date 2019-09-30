#!/bin/bash

#This program generates a multiplycation table from 1 to 12
#for number from 0 - 10 selected by user

echo "Enetr number from 0 - 9 to choose multiplycation table"

#read number from user
read num

#checking if user eneted numbers in range 0-9
if [[ ($num -gt 9) ]] || [[ ($num -lt 0) ]]; then
  echo "Incorrect choice, exiting the program..."
  sleep 2
  exit
fi

echo "Generating multiplycation table for $num .... "
sleep 1

#calculating and printing multiplycation table based on
#users choice

#loop that will reapeat multiplycation with num 12 times
for (( i = 1; i < 13; i++ )); do
  ((product=$num*$i))
  echo "$i x $num = $product"
done
