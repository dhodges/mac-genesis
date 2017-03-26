#!/bin/sh

# see: http://lapwinglabs.com/blog/hacker-guide-to-setting-up-your-mac

if test ! $(which brew); then
  echo "installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "updating homebrew..."
brew update

echo "installing homebrew cask..."
brew install caskroom/cask/brew-cask

echo "updating homebrew cask..."
brew cask update

apps=(
    alfred2
    atom
    dbvisualizer
    firefox
    google-chrome
    iterm2
    java
    screenhero
    shiftit
    sourcetree
    sublime-text
    vagrant
    virtualbox
    xquartz
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo
echo "installing apps..."
brew cask install ${apps[@]}

echo
echo "tapping caskroom/fonts..."
brew tap caskroom/fonts

fonts=(
    font-hack
    font-inconsolata
)

echo "installing fonts..."
brew cask install ${fonts[@]}
