#!/usr/bin/env bash
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
ROOT_DIR="$(dirname "$DIR")"
cd "$ROOT_DIR" || return

echo "We will generate a fresh project for you"
output_dir="$ROOT_DIR/output"

if [ ! -d "$output_dir" ]; then
    echo "$output_dir" not exists
    exit 1
fi
