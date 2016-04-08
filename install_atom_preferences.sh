#!/bin/sh -e

extensions=(
  atom-alignment
  change-case
  git-plus
  highlight-line
  linter
  linter-eslint
  linter-js-yaml
  linter-jsonlint
  linter-markdownlint
  linter-package-json-validator
  linter-ruby
  linter-sass-lint
  linter-shellcheck
  open-recent
  pigments
  pretty-json
  synced-sidebar
  tabs-to-spaces
  unity-ui
)

echo 'installing atom extensions...'
apm install ${extensions[@]}
