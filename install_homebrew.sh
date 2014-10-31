#!/bin/sh

# see: http://lapwinglabs.com/blog/hacker-guide-to-setting-up-your-mac

# Check for Homebrew,
# Install if we don't have it

if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update
