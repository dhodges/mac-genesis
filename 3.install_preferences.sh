#!/bin/sh

THIS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PREFS_DIR=$THIS_DIR/prefs

echo "symlinking preference files..."

# neither Terminal nor iTerm respect symlinked pref files (grrr)
cp $PREFS_DIR/com.googlecode.iterm2.plist ~/Library/Preferences
cp $PREFS_DIR/com.apple.Terminal.plist    ~/Library/Preferences

[[ -f ~/Library/Preferences/org.shiftitapp.ShiftIt.plist ]] || ln -sfv $PREFS_DIR/$file

echo
echo "done."
echo
