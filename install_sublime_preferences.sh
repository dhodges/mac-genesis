#!/bin/sh -e

# sublime text doesn't respect symlinks (*sigh*)
PKG_DIR="$HOME/Library/Application Support/Sublime Text 2/Packages"
USER_DIR="$PKG_DIR/User"
mkdir -p "$USER_DIR"
THIS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PREFS_DIR="$THIS_DIR/prefs/sublime_text"

cp $PREFS_DIR/* "$USER_DIR"

[[ -e ~/bin/subl ]] || ln -s '/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl' ~/bin/subl

packages=(
    jisaacks/GitGutter
    surjikal/sublime-coffee-compile
    Xavura/CoffeeScript-Sublime-Plugin
    SublimeColors/Solarized
    drewda/cucumber-sublime2-bundle
    natew/ExpandSelectionByParagraph
    kemayo/sublime-text-2-git
    dzhibas/SublimePrettyJson
    lonelyplanet/AtlasTestRunner
    NaN1488/sublime-gem-browser
    facelessuser/BracketHighlighter
    CraigWilliams/BeautifyRuby
    irohiroki/RubyBlockConverter
    iltempo/sublime-text-2-hash-syntax
    vkocubinsky/SublimeTableEditor
    farcaller/DashDoc
)

cd "$PKG_DIR"

for pkg in ${packages[@]}
do
    name=`echo $pkg | cut -d'/' -f2`

    if [[ -d $name ]]; then
        echo "pkg already installed: $name"
    else
        echo
        echo "installing pkg: $name"
        rm -rf "$name"
        git clone "https://github.com/${pkg}.git"
        echo
    fi
done

echo  "Sublime Text 2 Package Manager installation:"
echo  "https://sublime.wbond.net/installation#st2"
