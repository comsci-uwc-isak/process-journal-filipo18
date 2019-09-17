#!/bin/bahh

#This program demostrate different types of Loops with the for instruction

for color in Blue Green Pink Red
do
    echo "Color is = $color"
    #count the lenght of the word
    echo ${#color}
done

#second example
sportList=("Soccer Swimming Cycling Archery Climbing")
for sport in $sportList
do
    if [ $sport == 'Cycling']; then
        echo "My favouritesport is $sport"
    fi

#example 3: Reading arguments from the comandline
#user can enter variables before program starts from the comandline

echo "adding all the  arguments"
sum=0
for myval in $*
do
    ((sum+=$myval))
done
echo "The result of adding all the arguments is: $sum"

#exampe 4 print values from 1 to 100
for (( n=1; n<=100; n++ ))
do 
    echo "iteration: $n"
done

