README.md: guessinggame.sh
	touch README.md
	echo "This file was automatically created by make on: " > README.md
	date "+%Y-%b-%m" >> README.md
	echo "at: " >> README.md
	date +"%H:%M:%S" >> README.md
	echo "The bash script guessinggame.sh has the following number of lines: " >> README.md
	cat guessinggame.sh | wc -l >> README.md
