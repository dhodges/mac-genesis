#!/bin/sh -e

cd ~/build/dhodges_dotfiles

cp com.googlecode.iterm2.plist ~/Library/Preferences

ln -s '/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl' ~/bin/subl
cp sublime_text/* "~/Library/Application Support/Sublime Text 2/Packages/User"

