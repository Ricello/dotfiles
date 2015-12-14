#!/bin/zsh

bg="2f323b"
lfg="3f424b"
fg="e0e1e5"
dfg="979797"

desktop() {
	current="$(wmctrl -d | grep -n -o "*" | cut -c 1)"

	case $current in
	1)
		echo "%{B#$lfg}%{F#$fg}   \uf0ac%{F#$dfg}   \uf120    \uf0f6    \uf114   %{B#$bg}%{F#$fg}"
		;;
	2)
		echo "%{B#$lfg}%{F#$dfg}   \uf0ac   %{F#$fg}\uf120%{F#$dfg}    \uf0f6    \uf114   %{B#$bg}%{F#$fg}"
                ;;
	3)
		echo "%{B#$lfg}%{F#$dfg}   \uf0ac   \uf120    %{F#$fg}\uf0f6%{F#$dfg}    \uf114   %{B#$bg}%{F#$fg}"
        	;;
	4)
		echo "%{B#$lfg}%{F#$dfg}   \uf0ac   \uf120    \uf0f6    %{F#$fg}\uf114   %{B#$bg}"
        	;;
	esac
}

clock() {
	date +"%A, %d %B %H:%M"
}

while true; do
	desktop="$(desktop)"
	clock="$(clock)"

	echo "%{l}$desktop%{c}$clock"
	sleep 0.1

done | lemonbar -g 1080x28+180+0 -b -d -f "Inconsolata:size=9" -f "FontAwesome:size=9" -B "#$bg" -F "#$fg" | bash
