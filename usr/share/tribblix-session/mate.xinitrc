#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

if [ -f "$HOME/.Xresources" ]; then
  xrdb "$HOME/.Xresources"
elif [ -f "$HOME/.Xdefaults" ]; then
  xrdb "$HOME/.Xdefaults"
fi

XDG_CONFIG_DIRS=/usr/etc/xdg
export XDG_CONFIG_DIRS

exec /usr/bin/mate-session
