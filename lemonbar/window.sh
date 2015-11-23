#!/bin/bash

background=37BF8D
foreground=FFFFFF

xtitle -s -t 20 | \
while read window; do
	echo "  %{c}    $window    "
done |

lemonbar -g 160x28+0+0 -b -d -B \#FF$background -F \#FF$foreground -f "Inconsolata:size=9"| bash
