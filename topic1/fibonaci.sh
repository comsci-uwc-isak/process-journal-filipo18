#!/bin/bash


echo -n "Enter number of terms and press ENTER: "
read N
((x= $N + 1 ))
a=0
b=1
i=0

echo "The fibonaci sequence is: "
while [ $i -lt $x ]
do
    ((sum= $a + $b ))
    a=$b
    b=$sum  
    echo "$a"
    ((i= $i + 1 ))
done
exit
 
    
