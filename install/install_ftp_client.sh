#!/bin/bash 

# 离线安装ftp客户端软件

rpm –Uvh http://mirror.centos.org/centos-7/7/os/x86_64/Packages/ftp-0.17-67.el7.x86_64.rpm

ftp -n ip地址