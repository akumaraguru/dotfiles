#!/bin/sh

if [ `xrandr | grep -c ' connected '` -eq 2 ]; then # dual-monitor
    if [ `xrandr | grep VGA1 | grep -c ' connected '` -eq 1 ]; then
        xrandr --output eDP1 --auto --primary --output VGA1 --auto --left-of eDP1
    fi
fi
