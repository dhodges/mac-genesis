#!/bin/sh

# see: http://lapwinglabs.com/blog/hacker-guide-to-setting-up-your-mac

binaries=(
  ack
  bash-completion
  elasticsearch090
  git
  hub
  node
  postgresql
  postgis
  pstree
  rbenv
  ruby-build
  rbenv-bundler
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

echo "installing ruby 2.0.0..."
rbenv install 2.0.0-p353
echo

echo "installing ruby 2.1.1..."
rbenv install 2.1.1
echo

# launch at login
echo "Linking postgresql to launch on login:"
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents

echo "Linking emacs to launch on login:"
ln -sfv /usr/local/opt/emacs/*.plist ~/Library/LaunchAgents

echo
echo "Remember to install XCode and run 'xcode-select --install'"
echo "to install the command-line dev tools."
echo

# apple install of java for yosemite
# http://support.apple.com/kb/DL1572

# oracle installation of jdk v7:
# http://www.oracle.com/technetwork/java/javase/downloads/jdk7-downloads-1880260.html
