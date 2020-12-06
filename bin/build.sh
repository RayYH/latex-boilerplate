#!/usr/bin/env bash
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
ROOT_DIR="$(dirname "$DIR")"
cd "$ROOT_DIR" || return

tex_file=${1:-notes.tex}
if [ ! -f "$tex_file" ]; then
    echo "file $tex_file not exists"
fi

# using latexmk - suggest way
if command -v latexmk &>/dev/null; then
    latexmk -synctex=1 -interaction=nonstopmode -file-line-error -shell-escape -pdf "$tex_file"
    exit 0
fi

# using pdflatex -> biber -> pdflatex -> pdflatex
if command -v pdflatex &>/dev/null; then
    pdflatex -synctex=1 -interaction=nonstopmode -file-line-error -shell-escape "$tex_file"
    # Uncomment below lines if you want to include a bib file
    # bcf_file=${1:-notes.bcf}
    # biber "$bcf_file"
    # pdflatex -synctex=1 -interaction=nonstopmode -file-line-error -shell-escape "$tex_file"
    # pdflatex -synctex=1 -interaction=nonstopmode -file-line-error -shell-escape "$tex_file"
    exit 0
fi

echo "latexmk or pdflatex command not found!"
