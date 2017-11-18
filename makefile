all: README.md

README.md:
	echo "# Guessing Game" > README.md
	date >> README.md
	echo "" >> README.md
	echo "The file guessinggame.sh has the following number of lines:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md