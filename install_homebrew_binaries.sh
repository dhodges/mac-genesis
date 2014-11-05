#!/bin/sh

# see: http://lapwinglabs.com/blog/hacker-guide-to-setting-up-your-mac

binaries=(
  node
  ack
  hub
  elasticsearch090
  git
  postgresql
  postgis
  rbenv
  rbenv-bundler
  ruby-build
  redis
  tmux
  watch
  wget
)

brew tap homebrew/versions

echo "updating homebrew..."
brew update

echo "installing homebrew binaries..."
brew install ${binaries[@]}

brew install emacs --cocoa --srgb

brew linkapps

echo "cleaning up homebrew..."
brew cleanup

# launch postgresql on login
echo "Linking postgresql, to launch on login:"
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents

echo
echo "Remember to install XCode and run `xcode-select --install'"
echo "to install the command-line dev tools."
echo

# apple install of java for yosemite
# http://support.apple.com/kb/DL1572

#psql template1 -f /usr/local/share/postgis/postgis.sql
#psql template1 -f /usr/local/share/postgis/.sql
#psql template1 -f /usr/local/share/postgis/postgis.sql
