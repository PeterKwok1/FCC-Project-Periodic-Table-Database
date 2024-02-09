#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

if [[ ! $1 ]] 
then
  echo Please provide an element as an argument.
else
  ATOMIC_NUMBER_RESULT="$($PSQL "SELECT atomic_number FROM elements WHERE atomic_number=$1")"
  SYMBOL_RESULT="$($PSQL "SELECT atomic_number FROM elements WHERE symbol='$1'")"
  NAME_RESULT="$($PSQL "SELECT atomic_number FROM elements WHERE name='$1'")"
  # case
  # change commit messages
  echo "The element with atomic number 1 is Hydrogen (H). It's a nonmetal, with a mass of 1.008 amu. Hydrogen has a melting point of -259.1 celsius and a boiling point of -252.9 celsius."
fi


