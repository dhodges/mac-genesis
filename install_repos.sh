#!/bin/sh -e


mkdir -p ~/build
cd ~/build

[[ -e dotfiles  ]] || git clone git@github.com:dhodges/dotfiles.git dotfiles
[[ -e solarized ]] || git clone git://github.com/altercation/solarized.git

cd dotfiles
./bin/setupdotfiles


mkdir -p ~/projects
cd ~/projects

repos=(
    atlas
    aws-mfa
    blog
    chef-repo
    christo-extension
    cloudformation
    geo
    lpos-chef-repo
    map_tile_loader
    pairing_station
    performance_test
    release_info
    remixer
    spp_aws
    spp_boxen
    spp_dashboard
    spp_on_rails
    spp_release
)

for repo in ${repos[@]}; do
    [[ -e ~/projects/$repo ]] || git clone git@github.com:lonelyplanet/$repo.git
done
