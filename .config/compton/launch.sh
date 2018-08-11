#!/bin/sh

killall -q compton
while pgrep -x compton >/dev/null; do sleep 1; done
compton --glx-no-stencil --glx-no-rebind-pixmap --glx-swap-method exchange --config ~/.config/compton/compton &

