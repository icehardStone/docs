#!/bin/bash

#流程控制


echo "if   else"

if  test "1"  -eq  "1"
then
    echo "true"
else
    echo "false"
fi


echo "for 循环"

arrary=(1 2 3)
for i in ${arrary}
do
    echo ${i}
done

for loop in 1 2 3 4 5
do
    echo "The value is: $loop"
done

echo "while"

con=true #(test "1"  -eq "1")
while (${con})
do 
    echo "true"
    con=false
    break
done

echo "case"
item=1
case ${item} in
1)
    echo "1"
    ;;
2)
    echo "2"
    ;;
3)
    echo "3"
    ;;
esac