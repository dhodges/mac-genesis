#!/bin/sh -e


mkdir -p ~/build
cd ~/build

[[ -e dotfiles  ]] || git clone git@github.com:dhodges/dotfiles.git dhodges_dotfiles
[[ -e solarized ]] || git clone git://github.com/altercation/solarized.git

cd dhodges_dotfiles
./bin/setupdotfiles


mkdir -p ~/projects
cd ~/projects

repos=(
    atlas
    chef-repo
    cloudformation
    geo
    lpos-chef-repo
    map_tile_loader
    pairing_station
    remixer
    spp_aws
    spp_boxen
    spp_dashboard
)

for repo in ${repos[@]}; do
    [[ -e ~/projects/$repo ]] || echo '' && git clone git@github.com:lonelyplanet/$repo.git
done
