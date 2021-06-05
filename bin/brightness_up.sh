#!/usr/bin/env bash

brightness=$(cat /sys/class/backlight/intel_backlight/brightness)
((brightness+=50))
echo -n $brightness > /sys/class/backlight/intel_backlight/brightness
