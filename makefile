#/usr/bin/env bash

all: README.md

README.md: guessgame.sh
	touch README.md
	echo "# guessgame" > README.md
	echo $$(date) >> README.md
	echo "  \n" >> README.md
	wc -l guessgame.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md
