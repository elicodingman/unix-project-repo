# makefile for the project
# this file, when run, should create README.md
# README.md should include the project's title,
# the date and time that 'make' was run
# and the number of lines of code that guessinggame.sh contains

README.md:
  touch README.md
  echo "# **Unix Peer Review Project**" > README.md
  echo "## This program, when run, will play a game with you where you must guess the number of files in your current directory. Think you can beat it?" >> README.md
  echo "## Beat the 33-lined game script!" >> README.txt
  echo "This file was produced by a makefile which ran at" $((date))

