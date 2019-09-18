#!/bin/bash

#shows messege to the user
echo "Multiplying all the  arguments"

#set variable to 1
product=1

#loop arguments and then multiply them
for myval in $*
do
    (( product=$myval*$product ))
  
done

#showing result to the user
echo "The result of multiplying all the arguments is: $product"
