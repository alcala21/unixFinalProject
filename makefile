all: README.md

README.md:
	echo "# The Unix Workbench Final Project. \n" > README.md
	echo "The make command was run on: \n" >> README.md
	date >> README.md
	echo "\n" >> README.md
	echo "The file guessinggame.sh has the following number of lines: \n" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md