#!/bin/bash

# Program that counts down to zero from a given argument

echo -e "\n~~ Countdown Timer ~~\n"

: 'The $1 is the argument'
if [[ $1 -gt 0 ]]
then
  : '
  for (( i = $1; i >= 0; i-- ))
  do
    echo $i
    sleep 1
  done
  '
  : 'If condition passed, the argument will be stored to I variable'
  I=$1
  : 'which will undergo condition in the while loop'
  while [[ $I -ge 0 ]]
  do
    echo $I
    : 'decrement the I variable'
    (( I-- ))
    sleep 1
  done
else
  echo Include a positive integer as the first argument.
fi
