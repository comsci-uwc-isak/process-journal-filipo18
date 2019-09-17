#!/bin/bash

#program will print down n number of fibonachi numbers

echo -n "Enter number of terms and press ENTER: "
    #N is number of terms
read N

a=0
    #a is first number in fibbonachi series, we always add
    #lastnumber (b) in series to it and print it to the user
b=1

check=0
    #This variable is to stop loop, when $check gets 
    #bigger then N number of terms, program exits the loop
echo "The fibonaci sequence is: "
while [ $i -le $N ]
do
    ((sum= $a + $b ))
    #sum is sum of a and b, we use it just to add those to numbers
    #then we copy it to b to continue series
    a=$b
    b=$sum  
    echo "$a"
    ((check= $check + 1 ))
done
exit
 
    
