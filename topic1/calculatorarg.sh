#!bin/bash

#First go throuh all the arguments and find key word with if sentance
for myval in $*
do
  if [ $myval == 'add' ]; then
    result=0
    #when you find keyword you do desired operation for all
    #of the arguments
    #here we calculate sum
    for myval in $*
    do
      (( result=$myval+$result ))
    done
    #Print out result to user
    echo "Sum of all arguments is $result"
    exit

  elif [[ ($myval == 'minus') ]]; then
    result=0
    #here we calculate difference
    for myval in $*
    do
      (( result=$myval-$result ))
    done
    echo "Difference of all arguments is $result"
    exit

  elif [[ ($myval == 'product') ]]; then
    result=1

    #here product should be calculated but
    #bescause first argument in comandline
    #is text not a number, resoult I get out is
    #always 0 becouse if you try to multyply keyword
    #with number you get 0
    for myval in $*
    do
      ((result=$result*$myval))
    done
    echo "Product of all arguments is $result"
    exit
  fi
done
