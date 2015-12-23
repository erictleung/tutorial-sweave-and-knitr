FILE=sweave-knitr-tutorial

all: $(FILE).pdf

clean:
	rm $(FILE).pdf

.PHONY: all clean

%.pdf: %.md
	pandoc -t beamer -s $< -o $@
