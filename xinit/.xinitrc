#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

setxkbmap fi
xbindkeys
urxvtd -q -o -f
feh --bg-scale ~/Pictures/wallpapers/star-wars-death-star-fhd-1920x1080.jpg
[[ -f ~/.XResources ]] && xrdb -merge -I$HOME ~/.XResources
exec i3
#exec i3 -V >> ~/i3log-$(date +'%F-%k-%M-%S') 2>&1
