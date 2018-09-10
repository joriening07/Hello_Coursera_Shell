README.md: guessinggame.sh
	@touch README.md
	@echo "Title: Guessing number game" >> README.md
	@echo "\n**make date**:" >> README.md	
	@date >> README.md
	@echo "\n**number of lines in guessinggame.sh:**" >> README.md
	@wc -l < ./guessinggame.sh  >> README.md
