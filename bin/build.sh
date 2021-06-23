#!/usr/bin/env bash
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
ROOT_DIR="$(dirname "$DIR")"
cd "$ROOT_DIR" || return

tex_file=${1:-notes.tex}
if [ ! -f "$tex_file" ]; then
    echo "file $tex_file not exists"
fi

# using xelatex - 因为我们使用了 CTEX
if command -v xelatex &>/dev/null; then
    xelatex -synctex=1 -interaction=nonstopmode -file-line-error -shell-escape "$tex_file"
    exit 0
fi

echo "xelatx command not found!"
