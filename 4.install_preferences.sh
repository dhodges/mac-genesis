#!/bin/sh

THIS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PREFS_DIR=$THIS_DIR/prefs

echo "symlinking preference files..."

# neither Terminal nor iTerm respect symlinked pref files (grrr)
cp $PREFS_DIR/com.googlecode.iterm2.plist ~/Library/Preferences
cp $PREFS_DIR/com.apple.Terminal.plist    ~/Library/Preferences
w
[[ -f ~/Library/Preferences/org.shiftitapp.ShiftIt.plist ]] || ln -sfv $PREFS_DIR/$file

echo "VSCode extensions"
code --install-extension christian-kohler.npm-intellisense
code --install-extension gerane.theme-solarized-dark
code --install-extension gerane.theme-solarized-light
code --install-extension leizongmin.node-module-intellisense
code --install-extension naumovs.color-highlight
code --install-extension orta.vscode-jest
code --install-extension robinbentley.sass-indented
code --install-extension sysoev.vscode-open-in-github
code --install-extension waderyan.gitblame
code --install-extension wmaurer.change-case

echo
echo "done."
echo
