#!/usr/bin/env bash

# xset r rate 300 50
# setxkbmap gb
unclutter --start-hidden --timeout 3 -b

## DISPLAY SETTINGS ##
xrandr --output DP-2 --mode 1920x1080 -r 100 --primary --right-of HDMI-0
xrandr --output HDMI-0 --mode 1920x1080 -r 100

setsid dunst &
setsid picom -fc --blur-method gaussian --blur-deviation 25 &

xwallpaper --zoom $HOME/.config/PXL_20260814_210924196.NIGHT.jpg

IsNumLock="$(cat "/sys/class/leds/input2::numlock/brightness")"
[[ "$IsNumLock" == "0" ]] && xdotool key Num_Lock
