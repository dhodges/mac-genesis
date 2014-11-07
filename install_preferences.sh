#!/bin/sh -e

THIS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SOURCE_DIR=$THIS_DIR/prefs
PREFS_DIR=~/Library/Preferences

SUBL_USER_DIR="$HOME/Library/Application Support/Sublime Text 2/Packages/User"


# neither Terminal nor iTerm respect symlinks (grrr)
cp $SOURCE_DIR/com.googlecode.iterm2.plist $PREFS_DIR
cp $SOURCE_DIR/com.apple.Terminal.plist    $PREFS_DIR

cd $PREFS_DIR

[[ -f com.runningwithcrayons.Alfred-Preferences.plist ]] || ln -sfv $SOURCE_DIR/com.runningwithcrayons.Alfred-Preferences.plist
[[ -f com.runningwithcrayons.alfred-2.plist ]]           || ln -sfv $SOURCE_DIR/com.runningwithcrayons.alfred-2.plist
[[ -f org.shiftitapp.ShiftIt.plist ]]                    || ln -sfv $SOURCE_DIR/org.shiftitapp.ShiftIt.plist

[[ -e ~/bin/subl ]] || ln -s '/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl' ~/bin/subl

mkdir -p "$SUBL_USER_DIR"
cp $SOURCE_DIR/sublime_text/* "$SUBL_USER_DIR"


# Sublime Text 2 Package Manager installation:
# https://sublime.wbond.net/installation#st2

# Sublime Text Packages:
#
# BracketHighlighter
# Color Highlighter
# GitGutter
# Pretty JSON
# Table Editor
