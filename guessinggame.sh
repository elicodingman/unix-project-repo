#!/bin/bash

num_of_files=$((ls -A | wc -l))
integers='[^0-9]+$'

function game() {
echo "Hello player! Let's test your guessing skills! How many files do you think are in the current directory?"
read response 
}

if ! [[ $response=$integers ]] ; then
  echo "I'm only good at reading integers. You understand, right? Please enter an integer as your guess."
  read new_response ; new_response > response

while [[ $response=$integers ]] ; do
  if [[ $response=$integers && $response -lt $num_of_files ]] ; then
    echo "You guessed too low! Try again, better luck next time!"
    read new_response ; new_response > response
  elif [[ $response=$integers && $response -gt $num_of_files ]] ; then
    echo "You guessed too high! Try again, better luck next time!"
    read new_response ; new_response > response
  elif [[ $response=$integers && $response -eq $num_of_files ]] ; then
    echo "How'd you guess? That's right! Let's play again some time."
  else
    echo "Hmm. Something's wrong with your input. Try again and make sure it's a positive, whole number."
    read new_response ; new_response > response
  fi
done

