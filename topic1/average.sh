#!/bin/bash


#program will print out runnging avregae of eneterd numbers


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
