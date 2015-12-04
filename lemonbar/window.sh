#!/bin/zsh

background=37bf8d
foreground=ffffff

xtitle -s -t 20 | \
while read window; do
	if [ -z "$window" ]; then
		window="No active window."
	fi
	echo "%{c}     $window  %{l}  \uf0c9"
done |

lemonbar -g 180x28+0+0 -b -d -B \#FF$background -F \#FF$foreground -f "Inconsolata:size=9" -f "FontAwesome:size=10"| bash
