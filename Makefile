PDF_ENGINE ?= pdflatex
VERSION ?= $(shell git log -n 1 --pretty=format:"%H" | head -c 8)

build: ARA.pdf

build-two: ARA-gulp.pdf


ARA.pdf: *.md
	pandoc \
		--metadata=date:"Revision: $(VERSION)" \
		--pdf-engine=$(PDF_ENGINE) \
		-o $@  \
		ARA/ARA-Intro.md \
		ARA/ARA-Definitions-Short.md \
		ARA/ARA-Business.md \
		ARA/ARA-Discovery.md \
		ARA/ARA-Principles.md \
		ARA/ARA-Application.md \
		ARA/ARA-Goals.md \
		ARA/ARA-GuidanceStrategy.md \
		ARA/ARA-Styles.md \
		ARA/ARA-Patterns.md \
		ARA/ARA-References.md \
		ARA/ARA-Appendix-Definitions.md

ARA-gulp.pdf: *.md
		pandoc \
			--metadata=date:"Revision: $(VERSION)" \
			--pdf-engine=$(PDF_ENGINE) \
			-o ARA-gulp.pdf ARA.md

clean:
	-rm ARA.pdf
	-rm ARA-gulp.pdf

.phony: build build-two clean
