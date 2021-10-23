#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch
cd $HOME/.config/polybar
polybar top_secondary --config=$HOME/.config/polybar/bar.ini &

echo "Bar launched..."
