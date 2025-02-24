#!/bin/bash

echo -e "Enter your grade: \c"
read num


if ! ([[ "$num" =~ ^-?[0-9]+$ ]] && [ "$num" -le 100 ] && [ "$num" -ge 0 ]); then
    echo "Invalid input! Please enter a valid number."
    exit 1
fi

if ([ "$num" -ge 90 ] && [ "$num" -le 100 ]); then
    echo $num "--> Grade A"
elif ([ "$num" -ge 80 ] && [ "$num" -le 89 ]); then
    echo $num "--> Grade B"
elif ([ "$num" -ge 70 ] && [ "$num" -le 79 ]); then
    echo $num "--> Grade C"
elif ([ "$num" -ge 60 ] && [ "$num" -le 69 ]); then
    echo $num "--> Grade D"
else
    echo $num "--> Grade F"
fi