#!/bin/sh
pipewire &
pipewire-pulse &
pipewire-media-session &

autorandr main
xrandr --output DP-2 --set TearFree on  --primary --mode 1920x1080 --rate 144 --output HDMI-1 --set TearFree on  --mode 1920x1080 --rate 75 --left-of DP-2
pactl load-module module-native-protocol-tcp
xsetroot -cursor_name left_ptr

picom &
exec dbus-launch --sh-syntax --exit-with-session bspwm

#exec gnome-session
