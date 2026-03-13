#!/bin/bash
mkfifo /tmp/waybar_cava.fifo 2>/dev/null
BLOCKS=' ·∙•◉●⬤⬤'
cava -p ~/.config/cava/waybar.conf &
while IFS=';' read -ra vals; do
    bars=""
    for v in "${vals[@]}"; do
        [[ "$v" =~ ^[0-7]$ ]] && bars+="${BLOCKS:$v:1}"
    done
    [ -n "$bars" ] && echo "$bars" > /tmp/waybar_cava_bars
done < /tmp/waybar_cava.fifo
