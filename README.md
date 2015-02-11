The Tribblix session wrappers

There are 2 wrapper scripts in usr/bin:

setxsession
setvncsession

which set up a user's normal X11 session (via the .xinitrc file) or a
VNC session (via the ~/.vnc/xstartup file).

These simply copy the file matching the session name given as an
argument into the appropriate location. Then the traditional startx or
vncserver commands will pick up the startup script to launch the
desired desktop.

The session files are located in

/usr/share/tribblix-desktop

and for each desktop there will be 3 files. For example, for wmaker
these would be

wmaker.verify
wmaker.xstartup
wmaker.xinitrc

The xstartup or xinitrc files are copied to ~/.vnc/xstartup or
~/.xinitrc as appropriate.

The verify script is run before the copy takes place. If it fails, it
will explain why on stdout and fail with a none-zero exit code; the
copy of the session script will not take place.

The verify script is also run with the -query flag whenever a list of
available sessions is generated. This will cause it to respond with a
description and whether it is installed or not.

