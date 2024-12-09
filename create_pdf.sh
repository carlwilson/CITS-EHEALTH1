#!/usr/bin/env bash
echo "Generating PDF document from markdown"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR" || exit

cp -rf "$SCRIPT_DIR/spec-publisher/pandoc/img" "$SCRIPT_DIR/doc/pdf/"
cp -rf "$SCRIPT_DIR/spec-publisher/res/md/figs" "$SCRIPT_DIR/doc/pdf/"
cp -rf "$SCRIPT_DIR/specification/figs" "$SCRIPT_DIR/doc/pdf/"
cd doc/pdf || exit

echo " - PANDOC: Generating Preface from markdown"
pandoc  --from gfm \
        --to latex \
        --metadata-file "$SCRIPT_DIR/spec-publisher/pandoc/metadata.yaml" \
        "./preface.md" \
        -o "./preface.tex"
sed -i 's%section{%section*{%' ./preface.tex

echo " - PANDOC: Generating Postface from markdown"
pandoc  --from markdown \
        --to latex \
        --metadata-file "$SCRIPT_DIR/spec-publisher/pandoc/metadata.yaml" \
        "$SCRIPT_DIR/specification/postface/postface.md" \
        -o "./postface.tex"
sed -i 's%section{%section*{%' ./postface.tex

command -v markdown-pp >/dev/null 2>&1 || {
  tmpdir=$(dirname "$(mktemp -u)")
  # shellcheck source=/tmp/.venv-markdown/bin/activate
  source "$tmpdir/.venv-markdown/bin/activate"
}

echo " - MARKDOWN-PP: Preparing PDF markdown"
markdown-pp PDF.md -o eark-ehealth1-pdf.md -e tableofcontents
echo " - MARKDOWN-PP: Preparing PDF markdown"
sed -i 's%@csip:CONTENTINFORMATIONTYPE='\''citsehpj_v2_0'\''%@csip:CONTENTINFORMATIONTYPE='\''citsehpj\\_v2\\_0'\''%' ./eark-ehealth1-pdf.md


if [ -d "$SCRIPT_DIR/site/pdf" ]
then
  echo " - Removing old site PDF directory"
  rm -rf "$SCRIPT_DIR/site/pdf"
fi
mkdir "$SCRIPT_DIR/site/pdf"

echo " - PANDOC: Generating PDF document from markdown and Tex sources"
pandoc  --from markdown \
        --template "$SCRIPT_DIR/spec-publisher/pandoc/templates/eisvogel.latex" \
        --listings \
        --table-of-contents \
        --metadata-file "$SCRIPT_DIR/spec-publisher/pandoc/metadata.yaml" \
        --include-before-body "./preface.tex" \
        --include-after-body "./postface.tex" \
        --number-sections \
        eark-ehealth1-pdf.md \
        -o "$SCRIPT_DIR/site/pdf/eark-cits-ehealth1.pdf"

echo " - Finished"
