#!/bin/bash

#test 命令

#shell 中的test命令用于检查某个条件是否成立，它可以进行数值，字符和文件三个方面的测试

#               -eq                             等于则为真
#               -ne                             不等于则为真
#               -gt                              大于则为真
#               -ge                             大于等于则为真
#               -lt                              小于则为真
#               -le                             小于等于则为真

num1=1
num2=1
num3=3

if  test ${num1}  -eq  ${num2}
then 
    echo "true"
else
    echo "false"
fi


if  test ${num1}  -ne  ${num2}
then 
    echo "true"
else
    echo "false"
fi


if  test ${num1}  -gt  ${num2}
then 
    echo "true"
else
    echo "false"
fi


if  test ${num1}  -ge  ${num2}
then 
    echo "true"
else
    echo "false"
fi