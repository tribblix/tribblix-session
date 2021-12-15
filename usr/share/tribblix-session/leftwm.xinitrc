#!/bin/sh

if [ -f $HOME/.Xresources ]; then
  xrdb $HOME/.Xresources
elif [ -f $HOME/.Xdefaults ]; then
  xrdb $HOME/.Xdefaults
fi

# otherwise you get an infinite loop
XDG_RUNTIME_DIR=/tmp/leftwm.${USER}
export XDG_RUNTIME_DIR
mkdir -m 0700 -p $XDG_RUNTIME_DIR

dbus-launch /usr/bin/leftwm
