# howgetridofwindowsinaday generator makefile
.PHONY: all pdf html clean
PDF = howgetridofwindowsinaday.pdf
SRC = $(wildcard md/*.md)
IMG = $(wildcard md/img/*)
HTML = $(SRC:md/%.md=html/%.html)
OPTIONS = "{ \"html\": true, \"breaks\": true, \"plugins\": [ \"require('remarkable-classy')\" ], \"syntax\": [ \"footnote\", \"sup\", \"sub\" ] }"

all: pdf html

pdf: $(PDF)

html: $(HTML)

clean:
		rm -f $(PDF)
		rm html -rf

$(PDF): $(SRC) $(IMG)
		cd md && markdown-pdf ./*.md -o ../$(PDF) -s ../css/pdf.css -h ../css/runnings.js --remarkable-options $(OPTIONS)

$(HTML):html/%.html: md/%.md
		mkdir -p html
		markdown-it -o $@ $<

