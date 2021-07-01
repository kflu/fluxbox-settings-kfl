SCRIPT=`realpath $0`
DIR=`dirname $SCRIPT`

ln -v -s -f $DIR/.Xclients ~/.Xclients
ln -v -s -f $DIR/.Xresources ~/.Xresources
touch ~/.Xresources.dpi

mkdir -v -p ~/.fluxbox

cat << EOF > ~/.fluxbox/init
session.styleFile:	$HOME/.fluxbox/styles/Dyne
session.screen0.toolbar.tools:	prevworkspace, workspacename, nextworkspace, iconbar, systemtray, clock, RootMenu
EOF

ln -v -s -f $DIR/fluxbox/keys ~/.fluxbox/keys
ln -v -s -f $DIR/fluxbox/menu ~/.fluxbox/menu
ln -v -s -f $DIR/fluxbox/apps ~/.fluxbox/apps
ln -v -s -f $DIR/fluxbox/startup ~/.fluxbox/startup
ln -v -s -f $DIR/fluxbox/windowmenu ~/.fluxbox/windowmenu
ln -v -s -f -t ~/.fluxbox $DIR/fluxbox/styles

mkdir -v -p ~/.fonts
ln -v -s -f $DIR/.fonts/FreeSans.ttf ~/.fonts/FreeSans.ttf
# Used in rxvt. From https://sourceforge.net/projects/wqy/
ln -v -s -f $DIR/.fonts/wqy-microhei.ttc ~/.fonts/wqy-microhei.ttc

mkdir -v -p ~/.urxvt/ext
ln -v -s -f $DIR/.urxvt/ext/font-size ~/.urxvt/ext/font-size

# ---------
# ADDITIONAL PACKAGES
# ---------

cd $oldpath

$DIR/install_fluxbox.sh
