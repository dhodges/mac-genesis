#!/bin/sh -e

mkdir -p ~/projects
cd ~/projects

repos=(
    waldorf
    rowlf
    gustavo
    rizzo
    scooter
    rubberband
    pairing_station
    spp_boxen
)

for repo in ${repos[@]}; do
    [[ -e ~/projects/$repo ]] || git clone git@github.com:lonelyplanet/$repo.git
done
