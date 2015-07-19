#!/bin/sh -e

PKG_DIR="$HOME/Library/Application Support/Sublime Text 2/Packages"
USER_DIR="$PKG_DIR/User"
THIS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PREFS_DIR="$THIS_DIR/prefs/sublime_text"

cp $PREFS_DIR/* "$USER_DIR"
mv "$USER_DIR"/*.sublime-theme "$PKG_DIR"

packages=(
    jisaacks/GitGutter
    surjikal/sublime-coffee-compile
    Xavura/CoffeeScript-Sublime-Plugin
    revolunet/sublimetext-markdown-preview
    SublimeColors/Solarized
    eklein/sublime-text-puppet
    drewda/cucumber-sublime2-bundle
    natew/ExpandSelectionByParagraph
    kemayo/sublime-text-2-git
    dzhibas/SublimePrettyJson
    lonelyplanet/AtlasTestRunner
    NaN1488/sublime-gem-browser
    Monnoroch/ColorHighlighter
    facelessuser/BracketHighlighter
    Dimillian/Sublime-Hacker-News-Reader
    CraigWilliams/BeautifyRuby
    irohiroki/RubyBlockConverter
    iltempo/sublime-text-2-hash-syntax
    vkocubinsky/SublimeTableEditor
)

cd "$PKG_DIR"

for pkg in ${packages[@]}
do
    name=`echo $pkg | cut -d'/' -f2`

    if [[ -d $name ]]; then
        echo "pkg already installed: $name"
    else
        echo "installing pkg: $name"
        rm -rf "$name"
        git clone "https://github.com/${pkg}.git"
        echo
    fi
done
