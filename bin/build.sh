#!/usr/bin/env bash
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
ROOT_DIR="$(dirname "$DIR")"
cd "$ROOT_DIR" || return

if ! command -v pdflatex &>/dev/null; then
    echo "pdflatex could not be found"
    exit 1
fi

tex_file=${1:-notes.tex}

if [ ! -f "$tex_file" ]; then
    echo "file $tex_file not exists"
fi

pdflatex -shell-escape "$tex_file"
