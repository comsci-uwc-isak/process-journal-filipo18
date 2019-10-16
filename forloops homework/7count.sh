#!/bin/bash
#This program counts the number of words with 4 or less characters in
#the file attached (senseless.txt). It also shows the result as percentage.
#E.g. 45% of the word in the text are 4 or less character long.


#setting the working variables
lessthan4=0
morethan4=0


#First step is to count the words with less than 5 letters
#while read comands reads every line in file indicated next to done
while read line;
do
  #for loop will go throug line word by word
  for word in $line
  do
    #In $num variable I will store  number of letters in each word
    num=${#word}
    #If will count words with less than 5 letters and words with more than 5 letters
    if [[ ($num -lt 5) ]]; then
        ((lessthan4++))
    else
    ((morethan4++))
    fi
  done
done < "senseless.txt"


#Seconds step is to calculate percantage of words with less than 5 letters
#and print out the results
((total=$lessthan4+$morethan4))
((multi100=$lessthan4*100))
((percentage=$multi100/$total))

echo "Reading file senseless.txt ...."
echo "Number of words with 4 or less characters: $lessthan4 . "
echo "Percentage of words with with 4 or less characters in text is: $percentage %."

