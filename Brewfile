#!/bin/sh

# see: https://github.com/Homebrew/homebrew-bundle

brew "ack"
brew "ag"
brew "autoenv"
brew "bash"
brew "bash-completion"
brew "bat"
brew "bzr"
brew "coreutils"
brew "csshX"
brew "ctags-exuberant"
brew "fd"
brew "findutils" # find, locate, updatedb, xargs
brew "fzf"
brew "git"
brew "gpg"
brew "hub"
brew "openssl"
brew "pstree"
brew "ripgrep"
brew "rlwrap"
brew "svn" # needed for the occasional brew package
brew "terminal-notifier"
brew "tldr"
brew "tmux"
brew "watch"
brew "wget"

tap "d12frosted/emacs-plus"
brew "emacs-plus@28", args: ["with-native-comp"], restart_service: :changed

# langs and development

brew "clojure"
brew "jenv"
brew "leiningen"
brew "node"
brew "python@3.9"
brew "rbenv"
brew "rbenv-bundler"
brew "ruby-build"
brew "postgresql"

# apps

tap "homebrew/cask"

cask "dbvisualizer"
cask "firefox"
cask "musescore"
cask "rectangle"
cask "sourcetree"
cask "vagrant"
#cask "virtualbox" # 2021-11-24 still only intel, hasn't been ported to M1
cask "visual-studio-code"
cask "vlc"

cask "balenaetcher"

cask "flux"
cask "handbrake"
cask "transmission"

tap "homebrew/cask-fonts"

cask "font-camingocode"
cask "font-hack"
cask "font-inconsolata"
cask "font-juliamono"
cask "font-profont-nerd-font"
cask "font-roboto-mono"
cask "font-roboto-mono-nerd-font"
cask "font-source-code-pro"
