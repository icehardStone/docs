# find 命令参数及使用

## find 命令介绍

递归的处理层次目录中的文件，根据表达式搜索文件

## 参数

示范一：查找当前路径下的文件名为bit.txt的文件

``` shell
find ./ -name bit.txt
```

示范二，搜索对文件的最后一次访问在10分钟之前的文件

``` shell
find ./ -amin +10
```

示范三，对文件的最后一次访问在n*24小时之前

``` shell
find ./ -atime +10
```

示范四，对文件的最后一个修改在10分钟之前

``` shell
find ./ -cmin +30
```

示范五：对文件的最后一次修改在n*24小时之前

``` shell
find ./ -ctime +1
```

示范六：文件是空的或者是空目录

``` shell
find ./ -empty
```

示范七：对文件数据的最后一次修改在10分钟之前

``` shell
find ./ -mmin +10
```

示范八：对文件数据的最后一次修改在n*24小时之前

``` shell
find ./ -mtime +10
```

示范九：文件类型表达式

<!-- -type c
    文件是 c 类型的。类型可取值如下：

    b  特殊块文件(缓冲的)
    c  特殊字符文件(不缓冲)
    d  目录
    p  命名管道 (FIFO)
    f  普通文件
    l  符号链接
    s  套接字
    D  门 (Solaris 特有) -->

``` shell
find /home/admas/temp -type f
```
