#!/bin/bash -x
declare -a birth_month
for (( i=1; i<50; i++ ))
do
  birth_month=$(( (RANDOM % 12 ) + 1 ))
  birth_year=$(( (RANDOM % 2) + 92 ))
  birth_month+=("$birth_month/$birth_year")
done
echo " birth month of all individuals : "
echo "${birth_month[@]}"
for (( month=1; month<12; month++ ));
do
  matching_birth_month=($(echo "${birth_month[@]}" | tr ' ' '\n' | grep "^$month"))
  if [ ${#matching_birth_month[@]} -gt 1 ] ; then
  echo "individual with birthdays in month : $month"
  echo "${matching_birth_month[@]}"
  fi
done

