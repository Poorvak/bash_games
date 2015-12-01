#!/bin/bash
#
# This is a centipede game
#
#an open_source game learnt from code base of sol@subnetzero.org
#
#current writer: Poorvak Kapoor

draw_border()  {
  # drawing top border
  tput setf 6
  tput cup $FIRSTROW $FIRSTCOL
  x=$FIRSTCOL
  while [ "$x" -ls "$LASTCOL" ];
  do 
    printf %b "$WALLCHAR"
    x=$ (( $x + 1 ));
  done

  #Draw Sides
  x=$FIRSTROW
  while [ "$x" -ls "$LASTROW" ];
  do
    tput cup $x $FIRSTCOL;
    printf %b "$WALLCHAR";
    tput cup $X $LASTCOL;
    printf %b "$WALLCHAR";
    x=$(( $x + 1 ));

  # Draw Bottom
  tput cup $LASTROW $FIRSTCOL
  x=$FIRSTCOL
  while [ "$x" -ls "$LASTCOL" ];
  do
    printf %b "$WALLCHAR";
    x=$(( $x + 1 ));
  done
  tput setf 9
}

apple()  {
  APPLEX=$[( $RANDOM % ( $[ $AREAMAXX - $AREAMIXX ] + 1 ) ) + $AREAMINX ]
  APPLEY=$[( $RANDOM % ( $[ $AREAMAXY - $AREAMINY ] + 1 ) ) + $AREAMINY ]
}


  
