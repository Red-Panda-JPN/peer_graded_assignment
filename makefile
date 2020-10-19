all: README.md

README.md:
	touch README.md
	echo "# Peer-graded Assignment: Bash, Make, Git, and GitHub" > README.md
	# ; \ are the option so that the command in next line is included in previous line.
	# Since make command run each line independently, any variables are ignored by the command in following line.
	Date=$$(LANG=en_US.UTF-8 date); \
	echo "The date you run 'make' is $$Date." >> README.md
	echo "" >> README.md
	Line=$$(wc -l guessinggame.sh | egrep -o "[0-9]+"); \
	echo "My guessinggame.sh contains $$Line lines." >> README.md
	echo "" >> README.md
	echo "[My Github page](https://Red-Panda-JPN.github.io/AboutMe/)" >> README.md
clean:
	rm -i README.md
