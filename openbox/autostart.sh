#1/bin/bash

home=/home/student

# Prompt
cp $home/.prompt/zsh-openbox $home/.zshrc
cp $home/.prompt/xres-openbox $home/.Xresources
xrdb -merge $home/.Xresources

# Wallpaper
feh --bg-fill $home/.wallpaper.png

# Lemonbar
$home/.lemonbar/launcher.sh & disown
