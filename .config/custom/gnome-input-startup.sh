#!/bin/sh

# modify parameters for touchpad
TOUCHPAD_NAME="SynPS/2 Synaptics TouchPad"
TOUCHPAD_MATCH="SynPS\/2 Synaptics TouchPad"
TOUCHPAD_ID=$(xinput --list | sed -rn "s/.*($TOUCHPAD_MATCH).*id=([0-9]+).*/\2/p")

# echo $TOUCHPAD_NAME
# echo $TOUCHPAD_ID

if [ ! -z "TOUCHPAD_ID" ]; then
    xinput set-prop $TOUCHPAD_ID "Coordinate Transformation Matrix" 0.675 0.0   0.0 \
                                                                    0.0   1.045 0.0 \
                                                                    0.0   0.0   1.0
    xinput set-prop $TOUCHPAD_ID "libinput Accel Speed" -0.2
    xinput set-prop $TOUCHPAD_ID "libinput Middle Emulation Enabled" 1
else
    notify-send -t 10000 `basename "$0"` "failed to configure $TOUCHPAD_NAME"
fi
