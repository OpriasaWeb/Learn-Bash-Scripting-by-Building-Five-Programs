#!/bin/bash

# Program that counts down to zero from a given argument

if [[ $1 -gt 0 ]]
then
  for (( i = 10; i > 0; i-- ))
  do
    echo $i
  done
else
  echo Include a positive integer as the first argument.
fi
