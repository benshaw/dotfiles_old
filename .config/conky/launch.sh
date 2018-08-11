#!/bin/sh

killall -q conky
while pgrep -x conky >/dev/null; do sleep 1; done
conky -c ~/.config/conky/conky.conf &


