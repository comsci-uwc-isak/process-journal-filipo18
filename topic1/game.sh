#!/bin/bash

echo "Welcome, type in your name, then press ENTER"
	read name
echo "Hello " $name "your task today is, to get to the grocery store safely."
echo "You live in 60 storey skyscraper, if you want to take stairs press 1, if"
echo "you want to go with the elevator press 2 "
echo "Then press ENTER: "
	read opt1

	if [[ ($opt1 == 2) ]]; then
		echo "OHH NOO?!?!, elevator fell dow on the ground from the top floor. You died."
		sleep 3
		echo "The game will STOP. Bye-bye " $name
sleep 2
		exit
	elif [[ ($opt1 == 1) ]]; then
		echo "Congratulations, you successfully exit the building"
		echo "If you want to continue to the store by foot press 1, "
		echo "if you want to contiune to the store with car press 2 "
		echo "Then press ENTER: "
		read opt2
		if [[ ($opt2 -eq 2) ]]; then
			echo "BOOOOOM.....Your car exploded!!!"
			sleep 2
			echo "You died, bye-bye $name"
sleep 2
		exit
		else
		echo "You are in the car now "
		echo "on which side of the road you will drive? "
		echo "To drive on the left type in *left*, to drive "
		echo "on the right type in *right*"
		echo "Then press ENTER: "
		read opt3
		echo "That is wrong side of the road "
sleep 3
		echo "BOOOOM!! You made car accident, you died"
sleep 2		
		echo "The game will STOP, you didn't make it to the store"
sleep 2		
		exit
		fi


	else 
	echo "This choice does not exist, game will STOP"
	exit
	fi


