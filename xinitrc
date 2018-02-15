#!/bin/sh

userprofile=$HOME/.xprofile

if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/* ; do
        [ -x "$f" ] && source "$f"
    done
    unset f
fi

[ -f "$userprofile" ] && source "$userprofile"

xautolock -time 15 -locker slock &
setxkbmap -option ctrl:nocaps
emacs --daemon
# conky
pulseaudio --start
xmodmap ~/.Xmodmap
# [ ! -s ~/.config/mpd/pid ] && mpd
exec awesome
