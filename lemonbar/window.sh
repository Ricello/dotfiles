#!/bin/bash

background=37BF8D
foreground=FFFFFF



xtitle -s -t 20 | \
while read window; do
	echo "   %{c}   $(printf "\uf0c9")  $window    "
done |

lemonbar -g 180x28+0+0 -b -d -B \#FF$background -F \#FF$foreground -f "Inconsolata:size=9" -f "FontAwesome:size=10"| bash
