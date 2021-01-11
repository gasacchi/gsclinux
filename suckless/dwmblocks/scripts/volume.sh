#!/bin/sh

dwm_volume () {
# use amixer alsa
  HEADPHONE=$(amixer -c 0 cget numid=27,iface=CARD | awk -F"=" 'NR == 3 {print $2;}')
  STATUS=$(amixer sget Master |grep 'Mono:' |awk -F'[][]' '{print $6}')
  LEVEL=$(amixer sget Master |grep 'Mono:' |awk -F'[][]' '{print $2}')

  # headphone plugged
  if [ $HEADPHONE = 'on' ]
  then
    # headphone mute 
    if [ $STATUS = 'off' ]
    then
      printf "ﳌ %s\n" "$LEVEL"
    else
      # headphone unmute
      printf " %s\n" "$LEVEL"
    fi
    # headphone unplug use master volume
  else
    # master mute
    if [ $STATUS = 'off' ]
    then
      printf "婢 %s\n" "$LEVEL"
    else
      # master unmute
      printf " %s\n" "$LEVEL"
    fi
  fi

# use pamixer
#  STATUS=$(pamixer --get-mute --sink 1)
#  LEVEL=$(pamixer --get-volume --sink 1)
#
#  if [ $STATUS = 'false' ]
#  then
#    printf " %s\n" "$LEVEL"
#  else
#    printf "婢 %s\n" "$LEVEL"
#  fi
}

dwm_volume
