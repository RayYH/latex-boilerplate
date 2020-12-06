#!/usr/bin/env bash
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
ROOT_DIR="$(dirname "$DIR")"
cd "$ROOT_DIR" || return

# Below code use the functionality provided by git
# it looks more clean but maybe buggy - DON'T USE IT
# if [ -d .git ]; then
#     git add -A
#     git clean -fdx
# else
#     git rev-parse --git-dir 2>/dev/null
# fi

function remove_matched_files() {
    if [ -f "$1" ]; then
        case $1 in
        *.aux) ;&
        *.lof) ;&
        *.lot) ;&
        *.fls) ;&
        *.out) ;&
        *.toc) ;&
        *.fmt) ;&
        *.fot) ;&
        *.cb) ;&
        *.cb2) ;&
        .*.lb) ;&
        *.dvi) ;&
        *.xdv) ;&
        *-converted-to.*) ;&
        *.bbl) ;&
        *.bcf) ;&
        *.blg) ;&
        *-blx.aux) ;&
        *-blx.bib) ;&
        *.run.xml) ;&
        *.fdb_latexmk) ;&
        *.synctex) ;&
        *.synctex.gz) ;&
        *.pdfsync) ;&
        *.alg) ;&
        *.loa) ;&
        acs-*.bib) ;&
        *.thm) ;&
        *.nav) ;&
        *.pre) ;&
        *.snm) ;&
        *.vrb) ;&
        *.soc) ;&
        *.cut) ;&
        *.cpt) ;&
        *.spl) ;&
        *.ent) ;&
        *.lox) ;&
        *.mf) ;&
        *.mp) ;&
        *.t[1-9]) ;&
        *.t[1-9][0-9]) ;&
        *.tfm) ;&
        *.end) ;&
        *.?end) ;&
        *.[1-9]) ;&
        *.[1-9][0-9]) ;&
        *.[1-9][0-9][0-9]) ;&
        *.[1-9]R) ;&
        *.[1-9][0-9]R) ;&
        *.[1-9][0-9][0-9]R) ;&
        *.eledsec[1-9]) ;&
        *.eledsec[1-9]R) ;&
        *.eledsec[1-9][0-9]) ;&
        *.eledsec[1-9][0-9]R) ;&
        *.eledsec[1-9][0-9][0-9]) ;&
        *.eledsec[1-9][0-9][0-9]R) ;&
        *.acn) ;&
        *.acr) ;&
        *.glg) ;&
        *.glo) ;&
        *.gls) ;&
        *.glsdefs) ;&
        *.lzo) ;&
        *.lzs) ;&
        *-gnuplottex-*) ;&
        *.gaux) ;&
        *.gtex) ;&
        *.4ct) ;&
        *.4tc) ;&
        *.idv) ;&
        *.lg) ;&
        *.trc) ;&
        *.xref) ;&
        *.brf) ;&
        *-concordance.tex) ;&
        *-tikzDictionary) ;&
        *.lol) ;&
        *.ltjruby) ;&
        *.idx) ;&
        *.ilg) ;&
        *.ind) ;&
        *.maf) ;&
        *.mlf) ;&
        *.mlt) ;&
        *.mtc[0-9]*) ;&
        *.slf[0-9]*) ;&
        *.slt[0-9]*) ;&
        *.stc[0-9]*) ;&
        _minted*) ;&
        *.pyg) ;&
        *.mw) ;&
        *.nlg) ;&
        *.nlo) ;&
        *.nls) ;&
        *.pax) ;&
        *.pdfpc) ;&
        *.sagetex.sage) ;&
        *.sagetex.py) ;&
        *.sagetex.scmd) ;&
        *.wrt) ;&
        *.sout) ;&
        *.sympy) ;&
        *.upa) ;&
        *.upb) ;&
        *.pytxcode) ;&
        pythontex-files-*/) ;&
        *.listing) ;&
        *.loe) ;&
        *.dpth) ;&
        *.md5) ;&
        *.auxlock) ;&
        *.tdo) ;&
        *.hst) ;&
        *.ver) ;&
        *.lod) ;&
        *.xcp) ;&
        *.xmpi) ;&
        *.xdy) ;&
        *.xyc) ;&
        *.xyd) ;&
        *.ttt) ;&
        *.fff) ;&
        TSWLatexianTemp*) ;&
        *.bak) ;&
        *.sav) ;&
        .texpadtmp) ;&
        *.lyx~) ;&
        *.backup) ;&
        .*.swp) ;&
        *~[0-9]*) ;&
        *.tps) ;&
        *.el) ;&
        *-tags.tex) ;&
        *.sta) ;&
        *.lpz) ;&
        *.xwm) ;&
        *.bak*) ;&
        *.log) echo "Removing $1" && rm "$1" ;;
        esac
    fi
}

# This will throw an error if you use outdated bash
shopt -s globstar
for file in "$ROOT_DIR"/**/*; do
    remove_matched_files "$file"
done
