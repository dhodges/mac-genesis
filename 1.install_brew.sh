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
  bat
  bzr
  coreutils
  csshX
  ctags-exuberant
  fd
  findutils # find, locate, updatedb, xargs
  fzf
  git
  gpg
  hub
  openssl
  pstree
  ripgrep
  rlwrap
  svn # needed for the occasional brew package
  terminal-notifier
  tldr
  tmux
  watch
  wget
)

# fzf: install key bindings and fuzzy completion
$(brew --prefix)/opt/fzf/install --all

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
    font-juliamono
    font-profont-nerd-font
    font-roboto-mono
    font-roboto-mono-nerd-font
    font-source-code-pro
)

echo "installing fonts..."
brew install ${fonts[@]}

echo
echo "cleaning up homebrew..."
brew cleanup
echo
