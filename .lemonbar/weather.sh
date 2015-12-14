#!/bin/zsh

bg="3f424b"
fg="e0e0e0"

while true; do
	current="$(weather &)"
	echo "%{B#$bg}%{F#$fg}%{c}\uf0c2  $current"
done | lemonbar -g 180x28+1260+0 -b -d -f "Inconsolata:size=9" -f "FontAwesome:size=9" -B "#$bg" -F "#$fg" | bash

