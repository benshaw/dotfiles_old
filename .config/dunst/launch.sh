#!/bin/sh

killall -q dunst
while pgrep -x dunst >/dev/null; do sleep 1; done
dunst -config ~/.config/dunst/dunst
~                                                  
