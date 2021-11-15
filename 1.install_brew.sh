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
#brew uninstall emacs-plus # maintainer of emacs-plus recommends against reinstall
brew install emacs-plus@28 --with-native-comp

echo "launching emacs with each startup..."
brew services start emacs-plus@28

apps=(
    dbvisualizer
    firefox
    musescore
    rectangle
    sourcetree
    vagrant
    virtualbox
    visual-studio-code
    vlc
)

echo
echo "installing apps..."
brew install ${apps[@]}

casks=(
    /homebrew/cask/flux
    /homebrew/cask/handbrake
    /homebrew/cask/transmission
)

echo
echo "installing casks..."
brew install ${casks[@]}

echo
echo "tapping homebrew/cask-fonts..."
brew tap homebrew/cask-fonts

fonts=(
    font-camingocode
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
