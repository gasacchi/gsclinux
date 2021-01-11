#!/bin/sh
dwm_temp () {
  TEMP=$(sensors|grep -oP "Core 1:\s*\+\K[0-9]+")

  printf "%s°C\n" "$TEMP"
}

dwm_temp
