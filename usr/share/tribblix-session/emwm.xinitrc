#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

if [ -f "$HOME/.Xresources" ]; then
  xrdb "$HOME/.Xresources"
elif [ -f "$HOME/.Xdefaults" ]; then
  xrdb "$HOME/.Xdefaults"
fi

/usr/bin/xmsession
