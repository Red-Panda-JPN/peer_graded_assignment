#!/usr/bin/env bash
# File: guessinggame.sh
# One function, one loop, and one if statement

Answer=$(ls | sort | wc -l )
loopBreak=false;

function CheckInput {
  if [[ $guess -eq $Answer ]]; then
    echo ""
    echo "You entered: "$guess". It's correct!!"
    break
  elif [[ $guess -gt $Answer ]]; then
    echo ""
    echo "You entered: "$guess". It's bigger than that of the answer."
    #echo "Guess how many files are there in the current directory.:"
    #read guess
  elif [[ $guess -lt $Answer ]]; then
    echo ""
    echo "You entered: "$guess". It's smaller than that of the answer."
    #echo "Guess how many files are there in the current directory.:"
    #read guess
  fi
}

while true
do
  echo ""
  echo "Guess how many files are there in the current directory:"
  read guess

 if [[ ! $guess =~ ^[0-9]+$ ]]; then
   echo ""
   echo "You entered: "$guess". Please enter an integer."
   echo ""
   #echo "Guess how many files are there in the current directory.:"
   #read guess
 else
   CheckInput
   if $loopBreak ; then
     break
   fi
 fi
done
