touch transient.txt
ls -l > transient.txt
dirfil=$(expr $(wc -l < transient.txt) - 2 )
a=0
while [[ $dirfil != $a ]] && [[ $a != "q" ]]
do
	echo "how many files in this directory?"
	read a
	if [[ $a =~ "q" ]]
	then
		echo "input 'q'"
	elif [[ $a -gt $dirfil ]]
	then
		echo "too high, guess again or press 'q' to quit"
	elif [[ $a -lt $dirfil ]]
	then
		echo "too low, try again, or press 'q' to quit"
	elif [[ $a -eq $dirfil ]]
	then
		echo "There are $dirfil files in this directory!"
	else
		echo "input not understood, try again. Input an integer number for a guess or type q to quit"
	fi
done
if [[ $a =~ "q" ]]
then
	echo "you quit the program, better luck next time!"
elif [[ $a -eq $dirfil ]]
then
	echo "congratulations, you guessed correctly!"
else
	echo "error?"
fi
rm transient.txt


