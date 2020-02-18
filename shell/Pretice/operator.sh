#!/bin/bash

#operator 运算符

#shell不支持数学运算，但是可以通过其他命令来实现。例如awk , expr等

#expr --help 查看帮助

#将表达式的值列印到标准输出，分隔符下面的空行可提升算式优先级。
#可用的表达式有：

#        ARG1 | ARG2       若ARG1 的值不为0 或者为空，则返回ARG1，否则返回ARG2

#        ARG1 & ARG2       若两边的值都不为0 或为空，则返回ARG1，否则返回 0

#        ARG1 < ARG2       ARG1 小于ARG2
#        ARG1 <= ARG2      ARG1 小于或等于ARG2
#        ARG1 = ARG2       ARG1 等于ARG2
#        ARG1 != ARG2      ARG1 不等于ARG2
#        ARG1 >= ARG2      ARG1 大于或等于ARG2
#        ARG1 > ARG2       ARG1 大于ARG2

#        ARG1 + ARG2       计算 ARG1 与ARG2 相加之和
#        ARG1 - ARG2       计算 ARG1 与ARG2 相减之差

#        ARG1 * ARG2       计算 ARG1 与ARG2 相乘之积
#        ARG1 / ARG2       计算 ARG1 与ARG2 相除之商
#        ARG1 % ARG2       计算 ARG1 与ARG2 相除之余数

#        字符串 : 表达式               定位字符串中匹配表达式的模式

#        match 字符串 表达式           等于"字符串 :表达式"
#        substr 字符串 偏移量 长度     替换字符串的子串，偏移的数值从 1 起计
#        index 字符串 字符             在字符串中发现字符的地方建立下标，或者标0
#        length 字符串                 字符串的长度
#        + TOKEN                    interpret TOKEN as a string, even if it is a   keyword like 'match' or an operator like '/'
#        ( EXPRESSION )             value of EXPRESSION

add=`expr 2 + 2`
echo "the sum is ${add}"
boolnumber=`expr true & false`
echo "the bool is ${boolnumber}"