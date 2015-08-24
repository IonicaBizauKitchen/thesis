#!/usr/bin/env bash

pandoc \
  --latex-engine=xelatex \
  -H ./tex/settings.tex \
  -V fontsize=12pt \
  -V documentclass:book \
  -V papersize:a4paper \
  -V classoption:twoside \
  --listings \
  --chapters \
  frontmatter/*.md \
  chapters/* \
  endmatter/*.md \
  -o thesis.pdf
