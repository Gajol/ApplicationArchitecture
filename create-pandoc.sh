#!/bin/bash
  # -f gfm \

pandoc "$1" \
    --include-in-header chapter_break.tex \
    --pdf-engine=pdflatex \
    -f markdown-implicit_figures \
    -V linkcolor:blue \
    -V geometry:margin=2cm \
    -V mainfont="Quattrocento" \
    -V monofont="Oswald" \
    -o "$2"


#     -V mainfont="DejaVu Serif" \
#     -V monofont="DejaVu Sans Mono" \
# https://learnbyexample.github.io/customizing-pandoc/

# Fonts
# https://wiki.ubuntu.com/Fonts#Links_to_fonts

# https://fedidat.com/160-installing-fonts-for-pandoc/

# https://www.pagecloud.com/blog/best-google-fonts-pairings
# Title font: Oswald
# Paragraph font: Quattrocento

# https://fonts.google.com
# https://wiki.ubuntu.com/Fonts#Links_to_fonts
