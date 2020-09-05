#!/bin/bash
## should know how many files are in a directory
## should present an error if the person doesn't guess right
## should stop if the person does guess right

function count_files() {
num_of_files=$((ls -A | wc -l))
}

function ask_for_input() {
echo "Hello player! Let's test your guessing skills! How many files do you think are in the current directory?"
read response
}

function input_isnum() {
integers='^[0-9]+$'
if ! [[ $response=$integers ]] ; then
  echo "I'm only good at reading integers. You understand, right? Please enter an integer as your guess."
elif [[ $response=$integers.$integers ]] ; then
  echo "Did you know that you can't have a fraction of a file in a directory? Wild! Please, enter a whole number this time."
else 
  $output=$good
fi
} 

function main() {
while [[ $output=$good ]] ; do
  if [[ $response -lt $num_of_files ]] ; then
    echo "You guessed too low! Try again, better luck next time!"
  elif [[ $response -gt $num_of_files ]] ; then
    echo "You guessed too high! Try again, better luck next time!"
  elif [[ $response -eq $num_of_files ]] ; then
    echo "How'd you guess? That's right! Let's play again some time."
  fi
done
}
