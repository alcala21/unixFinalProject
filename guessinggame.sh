all: README.md

README.md:
  echo "# Guessing Game" > README.md
  date >> README.md
  echo "\n" >> README.md
  echo "The file guessinggame.sh the following number of lines:" >> README.md
  wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.txt

clean:
  rm README.md