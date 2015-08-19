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
    alfred
    google-chrome
    firefox
    iterm2
    sublime-text
    atom
    dbvisualizer
    shiftit
    xquartz
    sourcetree
    screenhero
    vagrant
    virtualbox
    java7
    #dropbox
    #google-drive
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

# reveal these cask app links to Alfred
brew cask alfred link

echo
echo "tapping caskroom/fonts..."
brew tap caskroom/fonts

fonts=(
    font-inconsolata
)

echo "installing fonts..."
brew cask install ${fonts[@]}
