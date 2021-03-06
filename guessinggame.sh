#!/usr/bin/env bash
# File: guessinggame.sh

rightGuess=0

function getNumFiles {
  numFiles=$(ls | wc -l)
  echo $numFiles
}

while [[ $rightGuess -eq 0 ]]
do
  echo "How many files are in the current directory?"
  read guessNumber
  trueValue=$(getNumFiles)
  if [[ $guessNumber -eq $trueValue ]]
  then
    rightGuess=1
  fi
done

echo "Congratulations! You guessed the right number."