#!/bin/bash

echo "====Welcome===="

valid=true
sentence=""
while $valid
do
	echo "Enter a word. x for exit"
	read word
	if [ $word = x ];then
		break
	fi
	x=${#word}
	echo $x
	sentense="$sentense $word"
	echo $sentense
done
echo "bye"
exit
