SOURCE_DOCS := $(wildcard *.md:.md=.html)

PANDOC ?= $(shell which pandoc)

PANDOC_OPTIONS := -t html5 -S --from markdown-yaml_metadata_block \
	--template=./lib/template-revealjs.html --standalone --section-divs \
	--variable theme="night" --variable transition="convex"

%.html : %.md
	$(PANDOC) $(PANDOC_OPTIONS) $(PANDOC_HTML_OPTIONS) -o $@ $<

clean :
	rm *.html

all : $(EXPORTED_DOCS)
