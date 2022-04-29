#! /bin/bash


gulp ara

sed '/<a name=*/a\\n' ARA-TOC.md  > pandoc-ARA-TOC.md
# pandoc --pdf-engine=pdflatex --listings -o ARA-TOC.pdf pandoc-ARA-TOC.md

pandoc --pdf-engine=pdflatex --listings -o ARA-TOC.pdf pandoc-ARA-TOC.md

./create-pandoc.sh pandoc-ARA-TOC.md ARA-test.pdf
