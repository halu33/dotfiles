#!/bin/bash
# YADを使ってカレンダーをWaybarの下に小さめで表示

yad --calendar \
  --undecorated \
  --width=300 --height=220 \
  --posx=$(hyprctl activewindow -j | jq .at[0]) \
  --posy=60 \
  --no-buttons \
  --borders=5 \
  --skip-taskbar \
  --timeout=10 &

