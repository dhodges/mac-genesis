#!/bin/sh

# see: http://lapwinglabs.com/blog/hacker-guide-to-setting-up-your-mac

if test ! $(which brew); then
  echo "installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

echo
echo "updating homebrew..."
brew update

brew bundle # use ./Brewfile

echo
echo "installing fzf key bindings and fuzzy completion..."
$(brew --prefix)/opt/fzf/install --all

echo
echo "installing java"
echo
brew install jenv
export PATH=~/.jenv/bin:$PATH
eval "$(jenv init -)"
brew install --cask temurin
jenv add /Library/Java/JavaVirtualMachines/temurin-18.jdk/Contents/Home/
jenv global 18

ruby_versions="2.6.8 2.7.6"

echo
echo "checking ruby versions..."
echo

for rv in $ruby_versions; do
  if `rbenv versions | grep $rv > /dev/null`; then
    echo "ruby $v installed"
  else
    echo "installing ruby $rv..."
    rbenv install $rv
    echo
  fi
done

echo
echo "cleaning up homebrew..."
brew cleanup
echo
