#!/bin/bash

xrdb -merge /root/.Xresources
feh --bg-fill /root/wallpaper.png
cp /root/dotfiles/openbox/*.xml /home/student/.config/openbox

