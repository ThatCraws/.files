#!/bin/sh

numlockx &
setxkbmap -option compose:ralt 

./.xtablet-setup.sh

exec flameshot &

exec i3

