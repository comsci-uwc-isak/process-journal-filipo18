#!/bin/bash

#This program will add all odd numbers from 1 to 1000 and all even nnumber from 1 to 1000
echo "Adding all odd and even numbers from 1 to 1000..."


#adding odd numbers, setting starting variable
sumodd=0
for (( i = 1; i < 1000; i+=2 )); do
    ((sumodd=$sumodd+$i))
done

#adding even number, setting starting variable
sumeven=0
for (( p = 2; p < 1001; p+=2 )); do
    ((sumeven=$sumeven+$p))
done

#printing sums to user
echo "Sum odd numbers from 1 to 1000 is: $sumodd"
echo "Sum even numbers from 1 to 1000 is: $sumeven"