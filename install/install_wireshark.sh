#!/bin/bash

# install wireshark

# (1), to install wireshark with using yum

sudo yum list wireshark
sudo yum install wireshark.x86_64 -y

# (2), to install wireshark with off-line package

# steps:

# (a), get the off-line package

# 一共需要三个rpm 包： wireshark 包，加上两个依赖包 libsmi， libcares（根据自己的系统版本下载，x86_64 是 64位系统使用的），直接点击如下三个链接下载也行：
# http://mirror.centos.org/centos/7/os/x86_64/Packages/wireshark-1.10.14-16.el7.x86_64.rpm
# http://mirror.centos.org/centos/7/os/x86_64/Packages/libsmi-0.4.8-13.el7.x86_64.rpm
# http://ftp.altlinux.org/pub/distributions/ALTLinux/Sisyphus/x86_64/RPMS.classic//libcares-1.15.0-alt1.x86_64.rpm

# (b), install the rpm package 

rpm -Uvh *.rpm --nodeps --force

# (c), test ,ens32 is the network interface name
# use ifconfig -a show the all interface name

sudo tshark -i ens32 port 21
