date=$(date +"%Y-%b-%m")
time=$(date +"%H:%M:%S")
num_of_lines=$(wc -l guessinggame.sh | awk '{print $1 }')

README.md:
  touch README.md
  echo "Make was run on $date at $time." > README.md
  echo "You have a version of guessinggame.sh with $num_of_lines." >> README.md

