#!/bin/bash -x
declare -A sound
sound[dog]="bark"
sound[cow]="moo"
sound[Cat]="meow"
echo "sound of dog is"${sound[dog]}
echo "sound of all animal is" ${sound[@]}
echo "all keys are" ${!sound[@]}
echo "no.of element"${#sound[@]}
unset sound[dog]
echo "no of element is: "${#sound[@]}


