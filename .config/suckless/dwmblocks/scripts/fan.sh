#!/bin/sh

dwm_fan () {
  RPM=$(sensors | grep -i fan | awk '(NR==1){ print $2 }')
  
  printf "%s RPM\n" "$RPM"
}

dwm_fan
