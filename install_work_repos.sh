#!/bin/sh -e

mkdir -p ~/projects
cd ~/projects

[[ -e waldorf    ]] || git clone git@github.com:lonelyplanet/waldorf.git
[[ -e rowlf      ]] || git clone git@github.com:lonelyplanet/rowlf.git
[[ -e gustavo    ]] || git clone git@github.com:lonelyplanet/gustavo.git
[[ -e rizzo      ]] || git clone git@github.com:lonelyplanet/rizzo.git
[[ -e scooter    ]] || git clone git@github.com:lonelyplanet/scooter.git
[[ -e rubberband ]] || git clone git@github.com:lonelyplanet/rubberband.git

[[ -e pairing_station ]] || git clone git@github.com:lonelyplanet/pairing_station.git
[[ -e spp_boxen       ]] || git clone git@github.com:lonelyplanet/spp_boxen.git
