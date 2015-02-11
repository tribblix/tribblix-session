#!/bin/sh

if [ -f $HOME/.Xresources ]; then
  xrdb $HOME/.Xresources
elif [ -f $HOME/.Xdefaults ]; then
  xrdb $HOME/.Xdefaults
fi

exec /usr/bin/icewm-session
