#!/bin/bash

#This program will print all the odd numbers from 1001 to 1 reverse

#If I start with 1001 and decuce 2 in every next repetition I will get just odd numbers
for (( i = 1001; i > 0; i-=2 )); do
    echo $i
done