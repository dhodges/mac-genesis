#!/bin/sh -e

cd prefs

cp com.googlecode.iterm2.plist  ~/Library/Preferences
cp org.shiftitapp.ShiftIt.plist ~/Library/Preferences

[[ -e ~/bin/subl ]] || ln -s '/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl' ~/bin/subl

cp sublime_text/* "$HOME/Library/Application Support/Sublime Text 2/Packages/User"
