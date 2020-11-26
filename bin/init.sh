#!/usr/bin/env bash
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
ROOT_DIR="$(dirname "$DIR")"
cd "$ROOT_DIR" || return
bold_blue="\033[1;34m"
end="\033[0m"
function bold_blue() {
    echo -e "${bold_blue}${1}${end}"
}
bold_blue "We will generate a fresh project for you, please input the project name: "
read -r project_name

OUTPUT_DIR="$ROOT_DIR/output/$project_name"
[ -d "$OUTPUT_DIR" ] || mkdir "$OUTPUT_DIR"

cp -r "$ROOT_DIR/bin" "$ROOT_DIR/images" "$ROOT_DIR/sections" "$ROOT_DIR/notes.tex" \
    "$ROOT_DIR/commands.tex" "$ROOT_DIR/settings.tex" "$ROOT_DIR/references.bib" \
    "$ROOT_DIR/README.md" "$ROOT_DIR/defaultSettings.yaml" "$ROOT_DIR/LICENSE" "$ROOT_DIR/.gitignore" \
    "$OUTPUT_DIR/"

RESULT_DIR=${OUTPUT_DIR#"$ROOT_DIR/"}
echo -e "folder ${bold_blue}${RESULT_DIR}${end} generated successfully"
