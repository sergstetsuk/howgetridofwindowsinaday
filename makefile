# howgetridofwindowsinaday generator makefile
.PHONY: all pdf html clean
PDF = howgetridofwindowsinaday.pdf
SRC = $(wildcard md/*.md)
IMG = $(wildcard md/img/*)
HTML = $(SRC:md/%.md=html/%.html)

all: pdf html

pdf: $(PDF)

html: $(HTML)

clean:
		rm -f $(PDF)
		rm html -rf

$(PDF): $(SRC) $(IMG)
		cd md && markdown-pdf ./*.md -o ../$(PDF) -s ../css/pdf.css -h ../css/runnings.js

$(HTML):html/%.html: md/%.md
		mkdir -p html
		markdown-it -o $@ $<

