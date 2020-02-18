#!/bin/bash

#array

first_array=(A B "C" D true)

echo "first element ${first_array[0]}"
echo  "second element ${first_array[1]}"

echo "no exsit element ${first_array[4]}"

second_array=(true "name" 23 12.6)
echo ${second_array[0]}
echo ${second_array[1]}
echo ${second_array[2]}
echo ${second_array[3]}
echo ${second_array[4]}

echo "element count ${#second_array[@]}"