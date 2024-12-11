#!/usr/bin/env bash
echo "Generating GitHub pages site from markdown"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR" || exit

echo " - Cleaning up site directory and copying spec-publisher site..."
git clean -f doc/ site/ specification/
cp specification/postface/postface.md doc/site/
cp -rf spec-publisher/site/* site/
cp -rf spec-publisher/res/md/figs site/
# Copy remaining collaterel
cp -rf profile examples specification/figs schema site/

echo " - Generating main site specification and PDF markdown..."
mvn clean package -f spec-publisher/pom.xml
java -jar ./spec-publisher/target/mets-profile-processor-0.2.0-SNAPSHOT.jar -f ./specification.yaml -o doc/site profile/E-ARK-eHealth1-ROOT_v2.0.1.xml profile/E-ARK-eHealth1-REPRESENTATION_v2.0.1.xml 

echo " - MARKDOWN-PP: generating site page with TOC..."
cd doc/site || exit
bash "$SCRIPT_DIR/spec-publisher/scripts/create-venv.sh"
command -v markdown-pp >/dev/null 2>&1 || {
  tmpdir=$(dirname "$(mktemp -u)")
  source "$tmpdir/.venv-markdown/bin/activate"
}
markdown-pp body.md -o body_toc.md

echo " - MARKDOWN-PP: generating site index.md..."
markdown-pp SITE.md -o ../../site/index.md

cd "$SCRIPT_DIR" || exit

echo " - Cleaning up guidelines directory..."
if [ -d "$SCRIPT_DIR/site/guidelines" ]
then
  echo " - Removing old site guidelines directory"
  rm -rf "$SCRIPT_DIR/site/guidelines"
fi
mkdir "$SCRIPT_DIR/site/guidelines"
mkdir "$SCRIPT_DIR/site/guidelines/pdf"
git clean -f guidelines/
cp guidelines/markdown/guideline/postface/postface.md guidelines/site/
cp -rf spec-publisher/res/md/figs site/guidelines/
cp -rf guidelines/markdown/guideline/figs site/guidelines/

echo " - Generating guidelines site and PDF markdown..."
java -jar ./spec-publisher/target/mets-profile-processor-0.2.0-SNAPSHOT.jar -f ./guidelines/guidelines.yaml -o guidelines/site

echo " - MARKDOWN-PP: generating guidelines page with TOC..."
cd guidelines/site || exit
bash "$SCRIPT_DIR/spec-publisher/scripts/create-venv.sh"
command -v markdown-pp >/dev/null 2>&1 || {
  tmpdir=$(dirname "$(mktemp -u)")
  source "$tmpdir/.venv-markdown/bin/activate"
}
markdown-pp body.md -o body_toc.md

echo " - MARKDOWN-PP: generating guidelines index.md..."
markdown-pp SITE.md -o ../../site/guidelines/index.md

cd "$SCRIPT_DIR" || exit

if [ -d _site ]
then
  echo " - Removing old site directory"
  rm -rf _site/*
fi
