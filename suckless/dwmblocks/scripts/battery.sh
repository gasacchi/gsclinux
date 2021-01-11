#!/bin/sh

# A dwm_bar function to read the battery level and status
# Joe Standring <git@joestandring.com>
# GNU GPLv3

print_charging () {
  LEVEL=$1

  if [ $LEVEL -lt 30 ]
  then
    printf " %s%%\n" "$LEVEL"
  elif [ $LEVEL -lt 40 ]
  then
    printf " %s%%\n" "$LEVEL"
  elif [ $LEVEL -lt 60 ]
  then
    printf " %s%%\n" "$LEVEL"
  elif [ $LEVEL -lt 80 ]
  then
    printf " %s%%\n" "$LEVEL"
  elif [ $LEVEL -lt 90 ]
  then
    printf " %s%%\n" "$LEVEL"
  elif [ $LEVEL -lt 99 ]
  then
    printf " %s%%\n" "$LEVEL"
  else
    printf " %s%%\n" "$LEVEL"
    notify-send "Battery" "Fully charging, please unplug the charger!" -t 5000
  fi
}

print_battery () {
  LEVEL=$1

  if [ $LEVEL -lt 10 ]
  then
    printf " %s%%\n" "$LEVEL"
    notify-send "Battery" "Low battery, please plug the charger!" -u critical -t 5000
  elif [ $LEVEL -lt 20 ]
  then
    printf " %s%%\n" "$LEVEL"
  elif [ $LEVEL -lt 30 ]
  then
    printf " %s%%\n" "$LEVEL"
  elif [ $LEVEL -lt 40 ]
  then
    printf " %s%%\n" "$LEVEL"
  elif [ $LEVEL -lt 50 ]
  then
    printf " %s%%\n" "$LEVEL"
  elif [ $LEVEL -lt 60 ]
  then
    printf " %s%%\n" "$LEVEL"
  elif [ $LEVEL -lt 70 ]
  then
    printf " %s%%\n" "$LEVEL"
  elif [ $LEVEL -lt 80 ]
  then
    printf " %s%%\n" "$LEVEL"
  elif [ $LEVEL -lt 90 ]
  then
    printf " %s%%\n" "$LEVEL"
  elif [ $LEVEL -lt 98 ]
  then
    printf " %s%%\n" "$LEVEL"
  else
    printf " %s%%\n" "$LEVEL"
  fi
}

dwm_battery () {
    # Change BAT1 to whatever your battery is identified as. Typically BAT0 or BAT1
    LEVEL=$(cat /sys/class/power_supply/BAT0/capacity)
    STATUS=$(cat /sys/class/power_supply/BAT0/status)

    if [ "$STATUS" = "Charging" ]; then
        print_charging $LEVEL
      else
        print_battery $LEVEL
    fi
}

dwm_battery
