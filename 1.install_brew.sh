#!/bin/sh

# see: http://lapwinglabs.com/blog/hacker-guide-to-setting-up-your-mac

if test ! $(which brew); then
  echo "installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

echo
echo "updating homebrew..."
brew update

brew bundle # uses ./Brewfile

echo
echo "installing fzf key bindings and fuzzy completion..."
$(brew --prefix)/opt/fzf/install --all

echo
echo "cleaning up homebrew..."
brew cleanup
echo
