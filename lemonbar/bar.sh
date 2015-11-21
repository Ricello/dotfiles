#!/bin/bash

gr="37bf8d"
bg1="3f424b"
bg="2f323b"
fg="eff1f5"
dfg="e0e0e0"

desktop() {
	echo "%{B#$bg1}%{I$HOME/lemonbar/window.xbm}     one     two    thr    fou     %{B#$bg}"	
}

clock() {
	date +"%A, %d %B %H:%M"
}

weather() {
	wea="$(./weather.sh &)"
	echo "%{B#$bg1}%{F#$dfg}    #  $wea    %{B#$bg}%{F#$fg}"
}

while true; do
	desktop="$(desktop)"
	clock="$(clock)"
	weather="$(weather)"

	echo "%{l}$desktop %{c}$clock %{r}$weather"

done | lemonbar -g 1280x28+160+0 -d -B -f "System San Francisco Display 12" "#$bg" -F "#$fg" | bash
