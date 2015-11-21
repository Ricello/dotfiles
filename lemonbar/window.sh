#!/bin/bash

background=37BF8D
foreground=FFFFFF

xtitle -s -t 20 | \
while read window; do
	echo "  %{c}    $window    "
done |

lemonbar -g 160x28+0+0 -d -B \#FF$background -F \#FF$foreground | bash
