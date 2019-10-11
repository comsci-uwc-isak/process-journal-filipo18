#!/bin/bash

#this program will print out years from 1000 to 2019 with word year attached

#for loop will reapeat itself and always increase i by 1 1019 times

for (( i = 1000; i < 2020; i++ )); do
  echo "Year:" $i
done