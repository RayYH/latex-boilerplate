#!/usr/bin/env bash
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
ROOT_DIR="$(dirname "$DIR")"
cd "$ROOT_DIR" || return

if ! command -v latexindent &>/dev/null; then
    echo "latexindent could not be found"
    exit 1
fi

while IFS= read -r -d '' file; do
    [ -f "$file" ] || break
    echo "format $file"
    if [ -f "$ROOT_DIR/defaultSettings.yaml" ]; then
        latexindent -l "$ROOT_DIR/defaultSettings.yaml" -w "$file" &>/dev/null
    else
        latexindent -w "$file" &>/dev/null
    fi
done < <(find . -type f -name "*.tex" -print0)
