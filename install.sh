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

cat $DIR/fluxbox/styles/startrek.tar.gz | tar xzO > $DIR/fluxbox/styles/startrek.gitignore.xpm
ln -v -s -f $DIR/fluxbox/styles/startrek.gitignore.xpm $DIR/fluxbox/styles/Dyne/pixmaps/startrek.gitignore.xpm

mkdir -v -p ~/.fonts
ln -v -s -f $DIR/.fonts/FreeSans.ttf ~/.fonts/FreeSans.ttf

mkdir -v -p ~/.urxvt/ext
ln -v -s -f $DIR/.urxvt/ext/font-size ~/.urxvt/ext/font-size

# ---------
# ADDITIONAL PACKAGES
# ---------

cd $oldpath

$DIR/install_fluxbox.sh
