#!/bin/sh

dwm_watt () {
  WATT=$(awk '{print $1*10^-6}' /sys/class/power_supply/BAT0/power_now | awk -F. '{print $1}')
  printf " %s W\n" "$WATT"
}

dwm_watt
