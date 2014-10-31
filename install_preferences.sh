#!/bin/sh -e

cd prefs

cp com.googlecode.iterm2.plist ~/Library/Preferences
cp sublime_text/* "~/Library/Application Support/Sublime Text 2/Packages/User"

ln -s '/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl' ~/bin/subl
