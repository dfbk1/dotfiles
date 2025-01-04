#!/bin/bash

BRIGHTNESS_VALUE=`brightnessctl -m | awk -F',' '{print $4}' | awk -F'%' '{print $1}'`

if [ $BRIGHTNESS_VALUE -lt 20 ]; then
	BRIGHTNESS_ICON='󰃝 '
elif [ $BRIGHTNESS_VALUE -lt 50 ]; then
	BRIGHTNESS_ICON='󰃞 '
elif [ $BRIGHTNESS_VALUE -lt 80 ]; then
	BRIGHTNESS_ICON='󰃟 '
else
	BRIGHTNESS_ICON='󰃠 '
fi

echo "$BRIGHTNESS_ICON$BRIGHTNESS_VALUE%"
