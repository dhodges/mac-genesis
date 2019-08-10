#!/bin/sh -e

THIS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PREFS_DIR=$THIS_DIR/prefs

echo "symlinking preference files..."

# neither Terminal, nor iTerm, nor DbVisualizer respect symlinks (grrr)
cp $PREFS_DIR/com.googlecode.iterm2.plist ~/Library/Preferences
cp $PREFS_DIR/com.apple.Terminal.plist    ~/Library/Preferences
[[ -d ~/.dbvis ]] || cp -rf $PREFS_DIR/_dbvis ~/.dbvis

files=(
    org.shiftitapp.ShiftIt.plist
)

for file in ${files[@]}; do
    [[ -f ~/Library/Preferences/$file ]] || ln -sfv $PREFS_DIR/$file
done

# postgresql config
#PG_DIR=/usr/local/var/postgres/
#[[ -f $PG_DIR/postgresql.conf ]] && mv $PG_DIR/postgresql.conf $PG_DIR/postgresql.conf.bak
#cp $PREFS_DIR/postgresql.conf $PG_DIR

echo
echo "done."
echo
