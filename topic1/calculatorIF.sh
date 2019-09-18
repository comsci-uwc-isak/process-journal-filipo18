#!/bin/bash

#Program calculates arguments by operation selected by user
#with IF sentance

#User picks operation
echo "Enter operation: "
read operation

#With IF sentace I check what he entered and respond accordingly
if [[ ($operation == multiplication) ]]; then
  result=1
  for myval in $*
  do
      ((result=$result*$myval))
  done

elif [[ ($operation == addition) ]]; then
  result=0
  for myval in $*
  do

    (( result= $result + $myval ))
  done

elif [[ ($operation == subraction) ]]; then
  result=0
  for myval in $*
  do

   (( result=$result-$myval ))
done
fi


#at the end we print result to the user
echo $result
