#!/bin/sh

if [ -f $HOME/.Xresources ]; then
  xrdb $HOME/.Xresources
elif [ -f $HOME/.Xdefaults ]; then
  xrdb $HOME/.Xdefaults
fi

/usr/bin/awesome
