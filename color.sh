#!/bin/bash

for fg_colors in {0..7}; do
  fg=$(tput setaf $fg_colors)
  for bg_colors in {0..7}; do
    bg=$(tput setab $bg_colors)
    echo -n $bg$fg
    printf ' F: %s B: %s ' $fg_colors $bg_colors
  done
  echo $(tput sgr0)
done
