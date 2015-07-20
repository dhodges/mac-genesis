#!/bin/sh -e

mkdir -p ~/projects
cd ~/projects

repos=(
    atlas
    chef-repo
    geo
    geo-client
    lpos-chef-repo
    map_tile_loader
    pairing_station
    remixer
    spp_aws
    spp_boxen
    spp_dashboard
)

for repo in ${repos[@]}; do
    [[ -e ~/projects/$repo ]] || git clone git@github.com:lonelyplanet/$repo.git
done
