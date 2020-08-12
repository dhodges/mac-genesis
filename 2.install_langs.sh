#!/bin/sh

# see: http://lapwinglabs.com/blog/hacker-guide-to-setting-up-your-mac

if test ! $(which brew); then
  echo "installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "updating homebrew..."
brew update

brew tap adoptopenjdk/openjdk
brew cask install adoptopenjdk8

langs=(
    clojure
    leiningen
    node
    rbenv
    rbenv-bundler
    ruby-build
)

echo "installing languages..."
brew install ${langs[@]}

ruby_versions="2.5.8"

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

# go get -u github.com/go-delve/delve/cmd/dlv
# go get -v github.com/mdempsky/gocode
# go get -v github.com/uudashr/gopkgs/cmd/gopkgs
# go get -v github.com/sqs/goreturns
