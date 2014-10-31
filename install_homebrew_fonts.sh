# see: http://lapwinglabs.com/blog/hacker-guide-to-setting-up-your-mac

echo "installing homebrew cask..."
brew tap caskroom/fonts

fonts=(
    font-inconsolata
)

echo "installing fonts..."
brew cask install ${fonts[@]}
