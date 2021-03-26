#!/bin/bash

# ELinux（安全增强型Linux）是一个 Linux 内核安全模块，允许管理员和用户更好地控制访问控制。 它允许基于 SELinux 策略规则进行访问。


# 查看
getenforce

##设置SELinux 成为permissive模式
##setenforce 1 设置SELinux 成为enforcing模式
setenforce 0

# 永久关闭
# 编辑: /etc/selinux/config 文件
设置 SELINUX=disabled

# 要查看当前SELinux状态以及系统上正在使用的 SELinux 策略，可以使用 sestatus 命令：