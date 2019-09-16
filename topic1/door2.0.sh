#!/bin/bash

#This is Monty Hall problem

#Computer randomly chooses doors
(( x=(RANDOM%3) + 1))

echo "In front of you are 3 doors"
echo "behind one of them is 1M dollars"
echo "waiting for you, there is nothing"
echo "behind other two."
echo "Chose which door you want to open"
echo -n " Enter 1, 2, or 3: "
read door

#If user inputs wrong integer program closes
if [[ ($door -gt 3) ]]; then
    echo "Wrong choice, exiting the program"
    exit

#FIRST OPTION is that user don't guess correct doors. 
#Then program must show him doors that weren't randomizen
#neither picked by user


#We will calculate that doors by substracting sum of doors picked
#by user and doors randomized by computer from 6

        elif [[ ($door != x) ]]; then
            ((sum=$door + $x))
                echo "test1"
            ((y=6 - $sum))
            echo "*door $y opens* , there is nothing behind them"
            echo "You can change your choice from door $door"
            echo "to other closed door or stay on door $door "
            echo "If you want to stay on your door enter $door"
            echo "If you want to change door enter number of other"
            echo "closed doors: "



#SECOND OPTION is that user guessed doors rigt
#In that case it doesn't metter which of other 
#two doors we show to him
        elif [[ ($door -eq $x && $x -eq 1) ]]; then
            #Program shows user one of the empty doors
            #It is still random which of other 2 doors
            #program will show    
            (( y=(RANDOM%3) + 2))
            echo " *door $y opens* , there is nothing behind them"
            echo "You can change your choice from door $door"
            echo "to other closed door or stay on door $door "
            echo "If you want to stay on your door enter $door"
            echo "If you want to change door enter number of other"
            echo "closed doors: "


        elif [[ ($door -eq $x && $x -eq 3) ]]; then
            #Program shows user one of the empty doors
            #It is still random which of other 2 doors
            #program will show    
            (( y=(RANDOM%2) + 1))
            echo " *door $y opens* , there is nothing behind them"
            echo "You can change your choice from door $door"
            echo "to other closed door or stay on door $door "
            echo "If you want to stay on your door enter $door"
            echo "If you want to change door enter number of other"
            echo "closed doors: "

        #If computer randomly chooses door 2 it is a little bit
        #more tricky, becouse we need to randomly choose betwen
        #door 1 and door 1, thats why I use antoher elif and addition to get
        #right numbers,I randomize one number from 1 to 2 - if i get 1 I keep 1
        #if I get 2 I change it to 3
        #That is how I make sure that problem is mathematicly correct

        elif [[ ($door -eq $x && $x -eq 2) ]]; then
            (( y=(RANDOM%2) + 1))
        fi
                if [[ ($y -eq 1) ]]; then
                    echo " *door $y opens* , there is nothing behind them"
                    echo "You can change your choice from door $door"
                    echo "to other closed door or stay on door $door "
                    echo "If you want to stay on your door enter $door"
                    echo "If you want to change door enter number of other"
                    echo "closed doors: "
                
                elif [[ ($y -eq 2) ]]; then
                    y=3
                    echo " *door $y opens* , there is nothing behind them"
                    echo "You can change your choice from door $door"
                    echo "to other closed door or stay on door $door "
                    echo "If you want to stay on your door enter $door"
                    echo "If you want to change door enter number of other"
                    echo "closed doors: "
                    
                fi

#now we check what users second choice is and compare his choice with 
#randomized number from 1 to 3

read opt

if [[ ($opt -eq $x) ]]; then
    echo "Congratulations, you won 1M dollars$ "
elif [[ ($opt -gt 3) ]]; then
    echo "wrong choice, exiting the program..."
    sleep 2
    exit
else 
    echo "There is nothing behind the doors, you lost!"
fi
exit
       
        
    
