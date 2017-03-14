#!/bin/sh

#How to create/ store a board? [, , , , , , , , , ]
#How to read entry
#Display updated board.
#Detect win (and symbol).
#How to wipe board at game end.

playerOne=true
playerTwo=false
sign=X
gameStarted=false
gameFinished=false
board=(_ _ _ _ _ _ _ _ _)

function init {
  echo Welcome to Tic Tac Toe!

  echo ${board}

  echo Rows are A, B, C. Cols are 1, 2, 3. To play, please type desired move as, e.g., A 1 OR C 3 and press [ENTER].

  move
}

function updatePlayer {
  if [ "$playerOne" = true ] ; then
    playerOne=false
    playerTwo=true
    sign=O
  else
    playerTwo=false
    playerOne=true
    sign=X
  fi
}

function updateBoard {
  echo TODO: updateBoard
}

function move {
  echo Your move pal
  read move
  number = grep '[0-9]'
  echo You have moved to $move, ${ar[1]}

  #row=
  #col=

  #if move = A take num as index
  #if move =B add 3 to index
  #if move = C add 6 to index

  updateBoard
  updatePlayer
}

function clearGame {
  #Todo: clear board.
  echo gameOver. TODO: wipe the board clean.
}

if [ gameStarted == true ]
then
    # do stuff
  other
else
    # show instructions. TODO: help, init
  init
fi


#if [gameFinished]
#then
#  clearGame
#fi
