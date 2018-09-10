#!/bin/bash

#get the number of files in current directory.
filenumber=$(ls -1 | wc -l)

function guess_it {   
if [ $1 -gt $2 ]
then 
  echo "it's larger than the true number, please try again:"
elif [ $1 -lt $2 ]
then 
  echo "it's smaller than the true number, please try again:" 
fi
}

read -p "Please guess how many files in current directory ?" guess
while [[ $guess -ne $filenumber ]] #start the loop only when the guess is not correct.
do
  echo $(guess_it $guess $filenumber)
  read guess   # read new guess after the guess_it function, only unequal case go back to while loop   
done

echo "congrats"  #since the equal case will not enter the while loop, 
                 #so print the congrats here
