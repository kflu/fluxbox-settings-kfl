#!/bin/sh

DIR="$(realpath "$(dirname "$0")")"

ln -vsf $DIR/.Xclients ~/.Xclients
ln -vsf $DIR/.Xresources ~/.Xresources
touch ~/.Xresources.dpi

mkdir -v -p ~/.fluxbox

cat << EOF > ~/.fluxbox/init
# session.styleFile:	$HOME/.fluxbox/styles/Dyne
session.screen0.toolbar.tools:	prevworkspace, workspacename, nextworkspace, iconbar, systemtray, clock, RootMenu
EOF

cp -vf $DIR/fluxbox/keys ~/.fluxbox/keys
cp -vf $DIR/fluxbox/menu ~/.fluxbox/menu
cp -vf $DIR/fluxbox/apps ~/.fluxbox/apps
cp -vf $DIR/fluxbox/startup ~/.fluxbox/startup
cp -vf $DIR/fluxbox/windowmenu ~/.fluxbox/windowmenu


mkdir -p "$HOME/.fluxbox/styles"
find "$DIR/fluxbox/styles" -type d  -maxdepth 1 -mindepth 1 | while read -r dir; do
    cp -vrf "$dir" "$HOME/.fluxbox/styles"
done
