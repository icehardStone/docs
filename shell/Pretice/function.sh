#!/bin/bash

#函数

first_function(){
    echo "my  first function"
}

echo "start function"

first_function

echo "end function"

second_function(){
    ls -l
    echo pwd
    pwd
}
second_function

is_make=false

three_function(){
    if  [  -e "array.sh" ] 
    then 
        echo "exsit"
    else
        echo "not exsit"
    fi
}

three_function


