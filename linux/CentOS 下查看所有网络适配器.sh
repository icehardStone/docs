#!/bin/bash

# CentOS 下查看所有网络适配器/网卡

#  ifconfig |grep eth* | awk -F ‘[ ]+’ ‘{print $1}’
ifconfig 命令


# 安装wireshark 软件
yum install wireshark。

# 安装图形用户界面的wireshark 软件

yum install wireshark-gnome

