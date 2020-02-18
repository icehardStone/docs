#!/bin/bash

#find 命令 - 查找和搜粟文件

#find如不加任何参数，表示查找当前路径下的所有文件和目录，如果服务器负载比较高尽量不要在高峰期使用find命令，find命令模糊搜索还是比较消耗系统资源的。


#使用-name参数查看/etc目录下面所有的.conf结尾的配置文件：
find    /etc  -name            " *.conf"

#使用-size参数查看/etc目录下面大于1M的文件：
find    /etc  -size                +1M

#查找当前用户主目录下的所有文件：
find    $HOME                   -print

#列出当前目录及子目录下所有文件和文件夹：
find    /var/log    -iname      "*.log"

#搜索超过七天内被访问过的所有文件：
find    .       -type   f       -atime      +7

#找出/home下不是以.txt结尾的文件：
find    /home           !           -name  "*.txt"