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
  emacs
  git
  go
  gpg
  hg
  hub
  node
  phantomjs
  postgresql
  postgis
  pstree
  rbenv
  rlwrap
  ruby-build
  rbenv-bundler
  redis
  rlwrap
  terminal-notifier
  tmux
  watch
  wget
)

echo "installing homebrew binaries..."
brew install ${binaries[@]}

echo
brew linkapps

echo "installing coffee-script (via npm)"
npm install -g coffee-script

echo
echo "Linking postgresql to launch on login:"

LAUNCH_DIR=~/Library/LaunchAgents
[[ -f $LAUNCH_DIR/homebrew.mxcl.postgresql.plist ]] && rm $LAUNCH_DIR/homebrew.mxcl.postgresql.plist
ln -sfv /usr/local/opt/postgresql/homebrew.mxcl.postgresql.plist $LAUNCH_DIR/homebrew.mxcl.postgresql.plist

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
echo "To launch apache on startup:"
echo "    sudo launchctl load -w /System/Library/LaunchDaemons/org.apache.httpd.plist"
echo
echo "To install passenger:"
echo "    cd atlas"
echo "    gem install passenger -v 4.0.29"
echo "    passenger-install-apache2-module"
echo "    sudo apachectl -k restart"
echo
echo "Some python essentials may also help:"
echo "    sudo easy_install pip"
echo "    sudo pip install virtualenvwrapper"
echo
