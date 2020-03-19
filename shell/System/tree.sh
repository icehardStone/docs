#!/bin/bash

#下载tree 离线安装包 ftp://mama.indstate.edu/linux/tree/tree-1.8.0.tgz

tar -zxvf   ./tree-1.8.0.tgz

cd ./tree-1.8.0.tgz

make install

# 测试是否安装成功

sudo tree  ./
