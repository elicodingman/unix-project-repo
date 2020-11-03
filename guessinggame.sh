#!/bin/bash

function get_filenum {
  filenum=$(ls | wc -l)
}

function main {
  if [[ $userguess =~ $filenum ]]; then
    echo "Congratulations! You guessed correctly! Thank you for playing :)"
    exit 1
  else
    while ! [[ $userguess =~ $filenum ]]; do
      if ! [[ $userguess =~ ^[0-9]+$ ]]; then
        echo "Your input isn't an integer. Please enter a new value."
        read userguess
      elif [[ $userguess -gt $filenum ]]; then
        echo "You guessed too high! Try again"
        read userguess
      elif [[ $userguess -lt $filenum ]]; then
        echo "You guessed too low! Try again!"
        read userguess
      else
        echo "Sorry! I had an error. Try again with a new value."
        read userguess
      fi
    done
  fi
}

get_filenum

echo "Let's play a game! Try to guess how many files are in the current directory."
read userguess

main
