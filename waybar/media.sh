#!/bin/bash

if ! pgrep -f "cava-reader.sh" > /dev/null; then
    ~/.config/waybar/cava-reader.sh &
fi

while true; do
  STATUS=$(playerctl --player=spotify status 2>/dev/null)
  if [ "$STATUS" = "Playing" ] || [ "$STATUS" = "Paused" ]; then
    ARTIST=$(playerctl --player=spotify metadata artist 2>/dev/null | sed 's/"/\\"/g')
    TITLE=$(playerctl --player=spotify metadata title 2>/dev/null | sed 's/"/\\"/g')
    POSITION=$(playerctl --player=spotify position 2>/dev/null | cut -d. -f1)
    LENGTH=$(playerctl --player=spotify metadata mpris:length 2>/dev/null)
    TOTAL=$(( LENGTH / 1000000 ))
    [ "$TOTAL" -le 0 ] && TOTAL=1
    CUR_M=$(( POSITION / 60 ))
    CUR_S=$(( POSITION % 60 ))
    TOT_M=$(( TOTAL / 60 ))
    TOT_S=$(( TOTAL % 60 ))
    WAVEFORM=$(cat /tmp/waybar_cava_bars 2>/dev/null || echo "〜〜〜")
    printf '{"text": "󰝚 %s - %s  %s", "tooltip": "%02d:%02d · %02d:%02d"}\n' \
      "$ARTIST" "$TITLE" "$WAVEFORM" "$CUR_M" "$CUR_S" "$TOT_M" "$TOT_S"
  else
    printf '{"text": "", "tooltip": ""}\n'
  fi
  sleep 0.1
done
