#!/bin/sh -e

THIS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PREFS_DIR=$THIS_DIR/prefs

# neither Terminal nor iTerm respect symlinks (grrr)
cp $PREFS_DIR/com.googlecode.iterm2.plist ~/Library/Preferences
cp $PREFS_DIR/com.apple.Terminal.plist    ~/Library/Preferences

files=(
    com.runningwithcrayons.Alfred-Preferences.plist
    com.runningwithcrayons.alfred-2.plist
    org.shiftitapp.ShiftIt.plist
)

for file in ${files[@]}; do
    [[ -f ~/Library/Preferences/$file ]] || ln -sfv $PREFS_DIR/$file
done

[[ -d ~/.dbvis ]]   || ln -sfv $PREFS_DIR/_dbvis ~/.dbvis

[[ -e ~/bin/subl ]] || ln -s '/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl' ~/bin/subl

SUBL_USER_DIR="$HOME/Library/Application Support/Sublime Text 2/Packages/User"
mkdir -p "$SUBL_USER_DIR"
cp $PREFS_DIR/sublime_text/* "$SUBL_USER_DIR"


# Sublime Text 2 Package Manager installation:
# https://sublime.wbond.net/installation#st2

# Sublime Text Packages:
#
# BracketHighlighter
# Color Highlighter
# Git
# GitGutter
# Pretty JSON
# Table Editor
