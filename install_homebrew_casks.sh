# see: http://lapwinglabs.com/blog/hacker-guide-to-setting-up-your-mac

echo "installing homebrew cask..."
brew install caskroom/cask/brew-cask

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
    #dropbox
    #google-drive
)

# NB: dbvisualiser only provides an installer
# which still needs to be run (manually).
# Typically placed somewhere like:
#
# `/opt/homebrew-cask/Caskroom/dbvisualizer/9.1.11/DbVisualizer Installer.app`

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

# reveal these cask app links to Alfred
brew cask alfred link
