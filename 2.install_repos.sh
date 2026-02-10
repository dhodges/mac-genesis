#!/bin/sh -e

mkdir -p ~/build

[[ -e ~/build/dotfiles  ]] || git clone git@github.com:dhodges/dotfiles.git          ~/build/dotfiles
[[ -e ~/build/solarized ]] || git clone git://github.com/altercation/solarized.git   ~/build/solarized

cd ~/build/dotfiles
./bin/setupdotfiles
