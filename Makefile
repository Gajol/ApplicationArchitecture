PDF_ENGINE ?= xelatex
VERSION ?= $(shell git log -n 1 --pretty=format:"%H" | head -c 8)

build: ARA.pdf

ARA.pdf: *.md
	pandoc \
		--metadata=date:"Revision: $(VERSION)" \
		--pdf-engine=$(PDF_ENGINE) \
		-o $@ ARA-Intro.md

clean:
	-rm ARA.pdf

.phony: build clean
