#!/bin/sh -e

THIS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PREFS_DIR=$THIS_DIR/prefs

# neither Terminal, nor iTerm, nor DbVisualizer respect symlinks (grrr)
cp $PREFS_DIR/com.googlecode.iterm2.plist ~/Library/Preferences
cp $PREFS_DIR/com.apple.Terminal.plist    ~/Library/Preferences
[[ -d ~/.dbvis ]] || cp -rf $PREFS_DIR/_dbvis ~/.dbvis

files=(
    com.runningwithcrayons.Alfred-Preferences.plist
    com.runningwithcrayons.alfred-2.plist
    org.shiftitapp.ShiftIt.plist
)

for file in ${files[@]}; do
    [[ -f ~/Library/Preferences/$file ]] || ln -sfv $PREFS_DIR/$file
done
