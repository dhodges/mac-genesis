#!/bin/sh

# see: http://lapwinglabs.com/blog/hacker-guide-to-setting-up-your-mac

if test ! $(which brew); then
  echo "installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "updating homebrew..."
brew update

binaries=(
  ack
  ag
  autoenv
  awscli
  bash # v4
  bash-completion
  bzr
  clojure
  coreutils
  csshX
  ctags-exuberant
  emacs
  findutils # find, locate, updatedb, xargs
  git
  go
  gpg
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
  rlwrap
  terminal-notifier
  tmux
  watch
  wget
)

echo "installing homebrew binaries..."
brew install ${binaries[@]}

echo "launching emacs with each startup..."
brew services start emacs

echo "launching postgresql with each startup..."
brew services start postgresql

echo
echo "cleaning up homebrew..."
brew cleanup
echo
