#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=periodic_table --no-align --tuples-only -c"

cat atomic_mass.txt | while IFS=" | " read ATOMIC_NUMBER ATOMIC_MASS
do
  if [[ $ATOMIC_NUMBER != atomic_number ]]
  then
    UPDATE_ATOMIC_MASS_RESULT="$($PSQL "UPDATE properties SET atomic_mass=$ATOMIC_MASS WHERE atomic_number=$ATOMIC_NUMBER")"
    echo $UPDATE_ATOMIC_MASS_RESULT $ATOMIC_NUMBER $ATOMIC_MASS
  fi
done