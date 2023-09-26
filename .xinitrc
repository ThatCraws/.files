#!/bin/sh

numlockx &
setxkbmap -option compose:ralt 

exec flameshot &

exec i3

