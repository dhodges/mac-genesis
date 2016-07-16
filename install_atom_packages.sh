#!/bin/sh -e

THIS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ATOM_DIR=${HOME}/.atom
mkdir -p $ATOM_DIR

PKG_DIR=$ATOM_DIR/packages
mkdir -p $PKG_DIR

packages=(
  atom-alignment
  atom-beautify
  autoclose-html
  change-case
  git-blame
  git-plus
  highlight-line
  linter
  linter-eslint
  linter-js-yaml
  linter-jsonlint
  linter-markdownlint
  linter-package-json-validator
  linter-ruby
  linter-shellcheck
  open-recent
  pigments
  pretty-json
  sublime-style-column-selection
  synced-sidebar
  tabs-to-spaces
  unity-ui
  dhodges/atlas-jasmine-runner
)

echo 'installing atom packages...'

for pkg in ${packages[@]}; do
    name=`echo $pkg | cut -d'/' -f2`
    [ ! -e ${PKG_DIR}/$name ] && apm install $pkg
done

echo
echo 'done.'
