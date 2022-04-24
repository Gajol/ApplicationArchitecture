PDF_ENGINE ?= pdflatex
VERSION ?= $(shell git log -n 1 --pretty=format:"%H" | head -c 8)

build: ARA.pdf

build-two: ARA-gulp.pdf


ARA.pdf: *.md
	pandoc \
		--metadata=date:"Revision: $(VERSION)" \
		--pdf-engine=$(PDF_ENGINE) \
		-o $@ ARA/ARA-Intro.md ARA/ARA-Business.md ARA/ARA-Discovery.md

ARA-gulp.pdf: *.md
		pandoc \
			--metadata=date:"Revision: $(VERSION)" \
			--pdf-engine=$(PDF_ENGINE) \
			-o ARA-gulp.pdf ARA.md

clean:
	-rm ARA.pdf
	-rm ARA-gulp.pdf

.phony: build build-two clean
