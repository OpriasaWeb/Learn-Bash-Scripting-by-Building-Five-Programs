#!/bin/bash

# Bingo Number Generator

echo -e "\n~~ Bingo Number Generator ~~\n"

NUMBER=$(( RANDOM % 75 + 1 ))
TEXT="The next number is, "
if (( $NUMBER <= 15 ))
then
  echo $TEXT B:$NUMBER
elif [[ $NUMBER <= 30 ]]
  echo $TEXT I:$NUMBER
fi
echo $TEXT