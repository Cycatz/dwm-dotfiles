#!/bin/sh

[ -f /etc/xprofile ] && . /etc/profile
[ -f ~/.xprofile ] && . ~/.xprofile

exec dwm
