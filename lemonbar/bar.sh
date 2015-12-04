#!/bin/zsh

gr="37bf8d"
bg1="3f424b"
bg="2f323b"
fg="e0e1e5"
dfg="a0a0a0"
wfg="e0e0e0"

desktop() {
	current="$(wmctrl -d | grep -n -o "*" | cut -c 1)"

	case $current in
	1)
		echo "%{B#$bg1}%{F#$fg}    \uf0ac%{F#$dfg}   \uf120    \uf0f6    \uf114    %{B#$bg}%{F#$fg}"
		;;
	2)
		echo "%{B#$bg1}%{F#$dfg}    \uf0ac   %{F#$fg}\uf120%{F#$dfg}    \uf0f6    \uf114    %{B#$bg}%{F#$fg}"
                ;;
	3)
		echo "%{B#$bg1}%{F#$dfg}    \uf0ac   \uf120    %{F#$fg}\uf0f6%{F#$dfg}    \uf114    %{B#$bg}%{F#$fg}"
        	;;
	4)
		echo "%{B#$bg1}%{F#$dfg}    \uf0ac   \uf120    \uf0f6    %{F#$fg}\uf114    %{B#$bg}"			
        	;;
	esac
}

clock() {
	date +"%A, %d %B %H:%M"
}

weather() {
	wea="$(./weather.sh &)"
	printf "%%{B#$bg1}%%{F#$wfg}    \uf0c2  $wea    %%{B#$bg}%%{F#$fg}"
}

while true; do
	desktop="$(desktop)"
	clock="$(clock)"
	#weather="$(weather)"

	echo "%{l}$desktop %{c}$clock %{r}$weather"
	sleep 0.1

done | lemonbar -g 1100x28+180+0 -b -d -f "Inconsolata:size=9" -f "FontAwesome:size=9" -B "#$bg" -F "#$fg" | bash
