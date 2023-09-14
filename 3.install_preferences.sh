#!/bin/sh

THIS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PREFS_DIR=$THIS_DIR/prefs

echo "symlinking preference files..."

# neither Terminal nor iTerm respect symlinked pref files (grrr)
cp $PREFS_DIR/com.googlecode.iterm2.plist ~/Library/Preferences
cp $PREFS_DIR/com.apple.Terminal.plist    ~/Library/Preferences
cp $PREFS_DIR/vscode_user_settings.json  "~/Library/Application Support/Code/User/settings.json"

[[ -f ~/Library/Preferences/org.shiftitapp.ShiftIt.plist ]] || ln -sfv $PREFS_DIR/$file

defaults write com.apple.screencapture disable-shadow -bool true; killall SystemUIServer
defaults write com.apple.screencapture type jpg; killall SystemUIServer

echo
echo "done."
echo
