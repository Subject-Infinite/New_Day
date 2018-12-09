README.md: guessinggame.sh
	touch README.md
	echo "#It's a New Day, yes it is!" > README.md
	echo "" >> README.md
	echo "the current project is: " >> README.md
	pwd >> README.md
	echo "" >> README.md
	echo "time and date of running make is: " >> README.md
	date >> README.md
	echo "" >> README.md
	echo "number of lines of code in guessinggame.sh: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
