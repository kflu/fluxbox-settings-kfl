#!/bin/sh

# necessary:
if dnf install -y fluxbox xterm libXau libXext tigervnc-server
then
    echo "NECESSARY FLUXBOX COMPONENTS INSTALLED SUCCESSFULLY"
else
    echo "NECESSARY FLUXBOX COMPONENTS CANNOT BE INSTALLED"
    exit 1
fi

# optional:
dnf install -y rxvt-unicode xclip || \
    echo "SOME OPTIONAL COMPONENTS NOT CANNOT BE INSTALLED"

