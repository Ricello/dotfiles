#!/bin/bash

gr="37bf8d"
bg1="3f424b"
bg="2f323b"
fg="eff1f5"
dfg="e0e0e0"

desktop() {
	current="$(wmctrl -d | grep -n -o "*" | cut -c 1)"

	case $current in
	1)
		echo "%{B#$bg1}    one    two    thr    fou    %{B#$bg}"
		;;
	2)
		echo "%{B#$bg1}    one    two    thr    fou    %{B#$bg}"
		;;
	3)
		echo "%{B#$bg1}    one    two    thr    fou    %{B#$bg}"
		;;
	4)
		echo "%{B#$bg1}    one    two    thr    fou    %{B#$bg}"
		;;
	esac
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

done | lemonbar -g 1280x28+160+0 -b -d -f "Inconsolata:size=9" -B "#$bg" -F "#$fg" | bash
