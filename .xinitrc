#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script
xset r rate 100 20
xset b off
[[ -f ~/.Xresources ]] && xrdb -load ~/.Xresources
awesome
. /etc/X11/Xsession

if ! type "$goa-daemon" > /dev/null 2>&1; then
sleep 10; killall goa-daemon
