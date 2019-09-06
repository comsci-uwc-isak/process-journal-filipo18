#!/bin/bash

#This file will check for a login credentials

username=Filip
password=1234

echo "Enter username and press ENTER"
read text1
echo "Enter password and press ENTER"
read -s text2

if [[ ($username == $text1 && $password == $text2) ]]; then
echo "Passowrd is correct"
else
echo "Password is incorrect"

fi
 
