#!/bin/bash

# This program prints 100 factors of the number 7. E.g. 7, 14, 21, ...

for (( i = 1; i < 101; i++ )); do
    ((product=7*$i))
    #printing products
    echo $product
done