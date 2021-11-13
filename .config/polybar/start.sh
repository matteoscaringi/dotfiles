#!/usr/bin/env sh

#for m in $(polybar --list-monitors | cut -d":" -f1); do
#    MONITOR=$m polybar --reload --config=~/.config/polybar/bar.ini main &
#done

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar
cd $HOME/.config/polybar
polybar main &
sleep 0.15
polybar left &
