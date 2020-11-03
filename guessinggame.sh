#!/bin/bash

function get_filenum {
  filenum=$(ls | wc -l)
}

function main {
  read userguess
  if [[ $userguess -eq $filenum ]]; then
    echo "Congratulations! You guessed correctly! Thank you for playing :)"
    exit 1
  elif ! [[ $userguess -eq  $filenum ]]; then
    while ! [[ $userguess =~ false ]]; do
      if ! [[ $userguess =~ ^[0-9]+$ ]]; then
        echo "Your input isn't an integer. Please enter a new value."
        main
      elif [[ $userguess -gt $filenum ]]; then
        echo "You guessed too high! Try again"
        main
      elif [[ $userguess -lt $filenum ]]; then
        echo "You guessed too low! Try again!"
        main
      else
        echo "Sorry! I had an error. Try again with a new value."
        main
      fi
    done
  else
    echo "Sorry! I had an error. Try again with a new value."
    main
  fi
}

get_filenum

echo "Let's play a game! Try to guess how many files are in the current directory."

main
