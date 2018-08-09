#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

MONITOR=$(polybar -m|tail -1|sed -e 's/:.*$//g')

# Launch bar1 and bar2
polybar main --config=/home/ben/.config/polybar/config # this is for debugging only uncomment this&
#polybar bar2 &

echo "Bars launched..."
