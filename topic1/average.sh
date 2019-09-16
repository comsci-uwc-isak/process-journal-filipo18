#!/bin/bash


#program has the same problem as loop.sh
#we still din't figgured out how to make 
#while loop with logical operator true false !
#ASK TEACHER!!!


echo "Welcome to the Running Average"

valid=true
sum=0
n=0
while [ $valid == true ]
do

	echo "Enter a number or Exit (X): "
	read num

	if [ $num == x ]; then
		valid=false

    else
	(( sum= $num + $sum ))
	(( n++ ))
	(( ave= $sum / $n ))
	echo "Running average is: $ave"
    fi
done
echo "exiting"
