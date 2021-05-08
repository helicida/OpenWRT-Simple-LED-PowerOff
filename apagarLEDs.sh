#!/bin/sh
# OpenWRT Shutdown LEDs
# 2021 sbarjola

for file in /sys/class/leds/*/brightness
do
        echo 0 > $file
done
