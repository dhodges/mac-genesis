#!/bin/sh -e

extensions=(
  atom-alignment
  change-case
  git-plus
  highlight-line
  linter
  linter-coffeelint
  linter-eslint
  linter-js-yaml
  linter-jsonlint
  linter-markdownlint
  linter-package-json-validator
  linter-ruby
  linter-sass-lint
  linter-shellcheck
  synced-sidebar
  unity-ui
)

echo 'installing atom extensions...'
apm install ${extensions[@]}
