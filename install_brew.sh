#!/bin/sh

# see: http://lapwinglabs.com/blog/hacker-guide-to-setting-up-your-mac

if test ! $(which brew); then
  echo "installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "updating homebrew..."
brew update

echo "tapping homebrew/versions..."
brew tap homebrew/versions

echo "tapping homebrew/boneyard..."
brew tap homebrew/boneyard

binaries=(
  ack
  ag
  autoenv
  awscli
  bash-completion
  bzr
  cheat
  csshX
  ctags-exuberant
  elasticsearch090
  git
  go
  gpg
  hg
  hub
  node
  postgresql
  postgis
  pstree
  rbenv
  ruby-build
  rbenv-bundler
  redis
  terminal-notifier
  tmux
  watch
  wget
)

echo "installing homebrew binaries..."
brew install ${binaries[@]}

echo "installing (homebrew) emacs..."
brew install emacs --cocoa --srgb

brew linkapps

echo "installing coffee-script (via npm)"
npm install -g coffee-script

echo
echo "Linking postgresql to launch on login:"
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents

echo
echo "Linking emacs to launch on login:"
ln -sfv /usr/local/opt/emacs/*.plist ~/Library/LaunchAgents

# apple install of java for yosemite
# http://support.apple.com/kb/DL1572

# oracle installation of jdk v7:
# http://www.oracle.com/technetwork/java/javase/downloads/jdk7-downloads-1880260.html

echo
echo "installing GNU core utilities..."

core_binaries=(
    coreutils
    findutils # find, locate, updatedb, xargs
    bash      # bash v4
)

brew install ${core_binaries[@]}

# Install more recent versions of some OS X tools
echo
echo "tapping homebrew/dupes..."
brew tap homebrew/dupes

echo
echo "installing updated grep..."
brew install homebrew/dupes/grep

echo
echo "cleaning up homebrew..."
brew cleanup

echo
echo "Remember to install XCode and run 'xcode-select --install'"
echo "to install the command-line dev tools."
echo
echo "To launch apache on startup:"
echo "sudo launchctl load -w /System/Library/LaunchDaemons/org.apache.httpd.plist"
echo
echo "To stop apache launching on startup:"
echo "sudo launchctl unload -w /System/Library/LaunchDaemons/org.apache.httpd.plist"
echo
