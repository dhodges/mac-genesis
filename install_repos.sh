#!/bin/sh

mkdir -p ~/build
cd ~/build

[[ -e dotfiles  ]] || git clone git@github.com:dhodges/dotfiles.git dhodges_dotfiles
[[ -e solarized ]] || git clone git://github.com/altercation/solarized.git

