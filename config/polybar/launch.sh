#!/bin/sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

MONITOR=eDP1 polybar base &
MONITOR=HDMI1 polybar base &
MONITOR=DP2 polybar master &
