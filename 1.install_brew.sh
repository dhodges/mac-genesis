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
  bash # v4
  bash-completion
  bzr
  coreutils
  csshX
  ctags-exuberant
  findutils # find, locate, updatedb, xargs
  git
  gpg
  hub
  openssl
  pstree
  ripgrep
  rlwrap
  terminal-notifier
  tldr
  tmux
  watch
  wget
)

echo "installing homebrew binaries..."
brew install ${binaries[@]}

echo "installing emacs-plus"
brew tap d12frosted/emacs-plus
brew install emacs-plus --with-jansson

echo "launching emacs with each startup..."
brew services start emacs-plus

apps=(
    dbvisualizer
    flux
    handbrake
    musescore
    rectangle
    sourcetree
    transmission
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
    font-dejavusansmono-nerd-font
    font-firamono-nerd-font
    font-hack
    font-inconsolata
    font-profont-nerd-font
    font-source-code-pro
)

echo "installing fonts..."
brew cask install ${fonts[@]}

echo
echo "cleaning up homebrew..."
brew cleanup
echo
