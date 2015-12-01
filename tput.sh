#!/bin/bash

redraw()  {
  local str width height length
  height=$(tput cols)
  width=$(tput lines)
  str="Width = $width and height = $height"
  length=${#str}
  clear
  tput cup $((height / 2)) $(((width / 2) - (length / 2)))
  echo "$str"
}

trap redraw WINCH

redraw;
while true; do
  :
done
