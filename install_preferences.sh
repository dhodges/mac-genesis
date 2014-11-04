#!/bin/sh -e

cd prefs

cp com.googlecode.iterm2.plist  ~/Library/Preferences
cp org.shiftitapp.ShiftIt.plist ~/Library/Preferences

[[ -e ~/bin/subl ]] || ln -s '/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl' ~/bin/subl

SUBL_USER_DIR="$HOME/Library/Application Support/Sublime Text 2/Packages/User"
mkdir -p          "$SUBL_USER_DIR"
cp sublime_text/* "$SUBL_USER_DIR"

# Sublime Text Packages:
#
# BracketHighlighter
# Color Highlighter
# GitGutter
# Pretty JSON
# Table Editor
