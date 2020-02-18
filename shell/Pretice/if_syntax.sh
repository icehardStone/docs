#!/bin/bash

#if 比较的字符用法

:<<!
        -e                          判断对象是否存在
        -d                          判断对象是否存在而且为目录
        -f                           判断对象是否存在而且为常规文件
        -l                           判断对象是否存在，而且为软连接
        -r                           判断对象是否存在，可读
        -w                          判断对象是否存在，可写
        -x                           判断对象是否存在，可执行
        -O                          判断对象是否存在，当前用户
        -G                          判断对象是否存在，当前用户组
        -nt                         判断file1是否比file2新  [ "/data/file1" -nt "/data/file2" ]
        -ot                         判断file1是否比file2旧  [ "/data/file1" -ot "/data/file2" ]

!