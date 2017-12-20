# howgetridofwindowsinaday generator makefile
.PHONY: all clean
PDF = howgetridofwindowsinaday.pdf
SRC = $(wildcard md/*.md)
IMG = $(wildcard md/img/*)

all: $(PDF)

clean:
		rm $(PDF)

$(PDF): $(SRC) $(IMG)
		cd md && markdown-pdf ./*.md -o ../$(PDF) -s ../css/pdf.css -h ../css/runnings.js

