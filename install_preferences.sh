#!/bin/sh -xe

cd prefs

PREFS_DIR=~/Library/Preferences

# iterm doesn't respect symlinks (grrr)
cp com.googlecode.iterm2.plist $PREFS_DIR/com.googlecode.iterm2.plist

[[ -f $PREFS_DIR/org.shiftitapp.ShiftIt.plist ]]                    || ln -sfv `pwd`/org.shiftitapp.ShiftIt.plist $PREFS_DIR
[[ -f $PREFS_DIR/com.runningwithcrayons.Alfred-Preferences.plist ]] || ln -sfv `pwd`/com.runningwithcrayons.Alfred-Preferences.plist $PREFS_DIR
[[ -f $PREFS_DIR/com.runningwithcrayons.alfred-2.plist ]]           || ln -sfv `pwd`/com.runningwithcrayons.alfred-2.plist $PREFS_DIR

[[ -e ~/bin/subl ]] || ln -s '/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl' ~/bin/subl

SUBL_USER_DIR="$HOME/Library/Application Support/Sublime Text 2/Packages/User"
mkdir -p          "$SUBL_USER_DIR"
cp sublime_text/* "$SUBL_USER_DIR"


# Sublime Text 2 Package Manager installation:
# https://sublime.wbond.net/installation#st2

# Sublime Text Packages:
#
# BracketHighlighter
# Color Highlighter
# GitGutter
# Pretty JSON
# Table Editor
