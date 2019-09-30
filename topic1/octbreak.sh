#!/bin/bash

#this program will callculate days left till october break
#based on datum of computer

#getting date from computer, and making computer write in in a format
#"day of the year" so its easy to calcuate difference between days
now=$(date +%j)

#October brak starts on 19th of October and that is
#292th day of the year
#To calculate days left till break i just subtract curennt
#date from 292

((daysleft=292-$now))

#Checking if this program is runned after the start of october break
if [[ ($daysleft -lt 0 ) ]]; then
  echo "October break 2019 already started"
  exit
else
echo "Days left till october break: $daysleft"
fi
