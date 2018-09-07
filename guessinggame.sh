#!/bin/bash

function guessinggame {
#get the number of files in current directory.
filenumber=$(ls -1 | wc -l)

echo "Please guess the number of files in current directory:"
read guess

while [ $guess != $filenumber ]
do
if [ $guess -gt $filenumber ]
then
  echo "You guess is larger than actual file number, please guess again:"
  read guess
elif [ $guess -lt $filenumber ]
then
  echo "You guess is smaller than actual file number, please guess again:"
  read guess
else
  echo "Please enter a number:"
  read guess
fi
done

  echo "Congrats"
}
