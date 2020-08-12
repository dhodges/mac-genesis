#!/bin/sh

THIS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PREFS_DIR=$THIS_DIR/prefs

echo "symlinking preference files..."

# neither Terminal nor iTerm respect symlinked pref files (grrr)
cp $PREFS_DIR/com.googlecode.iterm2.plist ~/Library/Preferences
cp $PREFS_DIR/com.apple.Terminal.plist    ~/Library/Preferences

[[ -f ~/Library/Preferences/org.shiftitapp.ShiftIt.plist ]] || ln -sfv $PREFS_DIR/$file

echo "VSCode extensions"
code --install-extension castwide.solargraph
code --install-extension gerane.theme-solarized-dark
code --install-extension gerane.theme-solarized-light
code --install-extension jemmyw.rails-fast-nav
code --install-extension jnbt.vscode-rufo
code --install-extension misogi.ruby-rubocop
code --install-extension naumovs.color-highlight
code --install-extension rebornix.ruby
code --install-extension sdras.night-owl
code --install-extension sysoev.vscode-open-in-github
code --install-extension waderyan.gitblame
code --install-extension wingrunr21.vscode-ruby
code --install-extension wmaurer.change-case

echo
echo "done."
echo
