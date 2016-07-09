#!/bin/sh

# see: http://lapwinglabs.com/blog/hacker-guide-to-setting-up-your-mac

if test ! $(which brew); then
  echo "installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "updating homebrew..."
brew update

echo "tapping homebrew..."
brew tap homebrew/versions
brew tap homebrew/boneyard
brew tap homebrew/dupes

binaries=(
  ack
  ag
  autoenv
  awscli
  bash # v4
  bash-completion
  bzr
  cheat
  coreutils
  csshX
  ctags-exuberant
  emacs
  findutils # find, locate, updatedb, xargs
  git
  go
  gpg
  homebrew/dupes/grep
  hg
  hub
  node
  openssl
  postgresql
  postgis
  pstree
  rbenv
  rlwrap
  ruby-build
  rbenv-bundler
  redis
  rlwrap
  shellcheck
  terminal-notifier
  tmux
  watch
  wget
)

echo "installing homebrew binaries..."
brew install ${binaries[@]}
brew linkapps

echo "installing coffee-script (via npm)"
npm install -g coffee-script

echo
echo "Linking postgresql to launch on login:"

LAUNCH_DIR=~/Library/LaunchAgents
[[ -f $LAUNCH_DIR/homebrew.mxcl.postgresql.plist ]] && rm $LAUNCH_DIR/homebrew.mxcl.postgresql.plist
ln -sfv /usr/local/opt/postgresql/homebrew.mxcl.postgresql.plist $LAUNCH_DIR/homebrew.mxcl.postgresql.plist

echo
echo "cleaning up homebrew..."
brew cleanup

echo
echo "To launch apache on startup:"
echo "    sudo launchctl load -w /System/Library/LaunchDaemons/org.apache.httpd.plist"
echo
echo "To install passenger:"
echo "    cd atlas"
echo "    gem install passenger -v 5.0.20"
echo "    passenger-install-apache2-module"
echo "    export EXTRA_CFLAGS='-I/usr/local/opt/openssl/include'"
echo "    export EXTRA_CXXFLAGS='-I/usr/local/opt/openssl/include'"
echo "    export EXTRA_LDFLAGS='-L/usr/local/opt/openssl/lib'"
echo "    sudo apachectl -k restart"
echo
echo "Some python essentials may also help:"
echo "    sudo easy_install pip"
echo "    sudo pip install virtualenvwrapper"
echo
