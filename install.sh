#!/bin/sh

DIR="$(realpath "$(dirname "$0")")"

ln -v -s -f $DIR/.Xclients ~/.Xclients
ln -v -s -f $DIR/.Xresources ~/.Xresources
touch ~/.Xresources.dpi

mkdir -v -p ~/.fluxbox

cat << EOF > ~/.fluxbox/init
# session.styleFile:	$HOME/.fluxbox/styles/Dyne
session.screen0.toolbar.tools:	prevworkspace, workspacename, nextworkspace, iconbar, systemtray, clock, RootMenu
EOF

ln -v -s -f $DIR/fluxbox/keys ~/.fluxbox/keys
ln -v -s -f $DIR/fluxbox/menu ~/.fluxbox/menu
ln -v -s -f $DIR/fluxbox/apps ~/.fluxbox/apps
ln -v -s -f $DIR/fluxbox/startup ~/.fluxbox/startup
ln -v -s -f $DIR/fluxbox/windowmenu ~/.fluxbox/windowmenu


mkdir -p "$HOME/.fluxbox/styles"
find "$DIR/fluxbox/styles" -type d  -maxdepth 1 -mindepth 1 | while read -r dir; do
    ln -v -s -f "$dir" "$HOME/.fluxbox/styles"
done
