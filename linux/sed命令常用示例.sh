#!/bin/bash 


# 只打印第三行
# 3 代表第三行，p 代表 print 打印, datafile 代表文件
sed -n '3p' datafile  

#  只显示指定行范围的文件内容，例如：

# 只查看文件的第100行到第200行
sed -n '100,200p' mysql_slow_query.log


sed '/my/p' datafile
#默认情况下，sed把所有输入行都打印在标准输出上。如果某行匹配模式my，p命令将把该行另外打印一遍。


sed -n '/my/p' datafile
#选项-n取消sed默认的打印，p命令把匹配模式my的行打印一遍。


sed '2,5d' datafile
#删除第二到第五行

sed '/My/,/You/d' datafile
#删除包含"My"的行到包含"You"的行之间的行


sed '/My/,10d' datafile
#删除包含"My"的行到第十行的内容



# 6.2 d命令

# 命令d用于删除输入行。sed先将输入行从文件复制到模式空间里，然后对该行执行sed命令，最后将模式空间里的内容显示在屏幕上。如果发出的是命令d，当前模式空间里的输入行会被删除，不被显示。

sed '$d' datafile
#删除最后一行，其余的都被显示

sed '/my/d' datafile
#删除包含my的行，其余的都被显示


# 6.3 s命令

sed 's/^My/You/g' datafile
#命令末端的g表示在行内进行全局替换，也就是说如果某行出现多个My，所有的My都被替换为You。

sed -n '1,20s/My$/You/gp' datafile
#取消默认输出，处理1到20行里匹配以My结尾的行，把行内所有的My替换为You，并打印到屏幕上。

  
sed 's#My#Your#g' datafile
#紧跟在s命令后的字符就是查找串和替换串之间的分隔符。分隔符默认为正斜杠，但可以改变。无论什么字符（换行符、反斜线除外），只要紧跟s命令，就成了新的串分隔符。