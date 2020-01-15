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
  coreutils
  csshX
  ctags-exuberant
  emacs
  findutils # find, locate, updatedb, xargs
  git
  gpg
  hub
  openssl
  postgresql
  postgis
  pstree
  rlwrap
  terminal-notifier
  tldr
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

apps=(
    dbvisualizer
    handbrake
    musescore
    iterm2
    shiftit
    sourcetree
    vagrant
    virtualbox
    visual-studio-code
    vlc
)

echo
echo "installing apps..."
brew cask install ${apps[@]}

echo
echo "tapping homebrew/cask-fonts..."
brew tap homebrew/cask-fonts

fonts=(
    font-camingocode
    font-dejavusansmono-nerd-font-mono
    font-firamono-nerd-font-mono
    font-hack
    font-inconsolata
    font-profont-nerd-font-mono
    font-source-code-pro
)

echo "installing fonts..."
brew cask install ${fonts[@]}

echo
echo "cleaning up homebrew..."
brew cleanup
echo
