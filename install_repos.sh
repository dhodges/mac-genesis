#!/bin/sh -e

mkdir -p ~/build

[[ -e ~/org ]]             || git clone git@github.com:dhodges/org-mode-files.git    ~/org
[[ -e ~/build/dotfiles  ]] || git clone git@github.com:dhodges/dotfiles.git dotfiles ~/build/dotfiles
[[ -e ~/build/solarized ]] || git clone git://github.com/altercation/solarized.git   ~/build/solarized

cd ~/build/dotfiles
./bin/setupdotfiles
