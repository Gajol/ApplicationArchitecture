#!/bin/bash
  # -f gfm \

pandoc "$1" \
    --include-in-header chapter_break.tex \
    --pdf-engine=pdflatex \
    -f markdown-implicit_figures \
    -V linkcolor:blue \
    -V geometry:margin=2cm \
    -V mainfont="DejaVu Serif" \
    -V monofont="DejaVu Sans Mono" \
    -o "$2"
