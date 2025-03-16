#!/bin/bash

# Program that counts down to zero from a given argument

echo -e "\n~~ Countdown Timer ~~\n"

if [[ $1 -gt 0 ]]
then
  : '
  for (( i = $1; i >= 0; i-- ))
  do
    echo $i
    sleep 1
  done
  '
  I=$1
  while [[ $I -ge 0 ]]
  do
    echo $I
    # I never changes here, so you would have an infinite loop. You can subtract one from I with double parenthesis (((...))) and the -- operator. In your while loop, add (( I-- )) after you echo $I to subtract one from I on each pass.
    (( I-- ))
    sleep 1
  done
else
  echo Include a positive integer as the first argument.
fi
