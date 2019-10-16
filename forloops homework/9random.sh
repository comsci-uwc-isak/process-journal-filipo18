#!/bin/bash
#This program prints 100 random letters from the alphabet. E.g. A, Z, X, ... 　



#Making the array of all the letters
arr=( a b c d e f g i j k l m n o p q r s t u v w x y z )

#Loop will generate random argument from array 100times
for ((i=0; i<100; i++))
do
    rand=$(($RANDOM%24))
letter=${arr[$rand]}
echo $letter
done


