#!/bin/sh

# see: http://lapwinglabs.com/blog/hacker-guide-to-setting-up-your-mac

binaries=(
  node
  ack
  hub
  elasticsearch090
  git
  postgresql
  postgis20
  rbenv
  rbenv-bundler
  ruby-build
  redis
  tmux
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

# apple install of java for yosemite
# http://support.apple.com/kb/DL1572

# launch postgresql on login
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents

# Remember to install XCode and run `xcode-select --install`
# to install the command-line dev tools
