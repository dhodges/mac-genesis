#!/bin/sh

# see: http://lapwinglabs.com/blog/hacker-guide-to-setting-up-your-mac

if test ! $(which brew); then
  echo "installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "updating homebrew..."
brew update

apps=(
    dbvisualizer
    iterm2
    java
    shiftit
    sourcetree
    vagrant
    virtualbox
    visual-studio-code
)

echo
echo "installing apps..."
brew cask install ${apps[@]}

echo
echo "tapping caskroom/fonts..."
brew tap caskroom/fonts

fonts=(
    font-hack
    font-inconsolata
    font-profont-nerd-font-mono
)

echo "installing fonts..."
brew cask install ${fonts[@]}

other_apps=(
    handbrake
    musescore
    vlc
)

echo "installing other apps..."
brew cask install ${other_apps[@]}

echo
echo "cleaning up homebrew..."
brew cleanup
echo
