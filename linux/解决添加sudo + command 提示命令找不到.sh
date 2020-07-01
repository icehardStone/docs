#!/bin/bash


# 切换到root用户

su root

# 编辑文件/etc/sudoers

sudo vi /etc/sudoers

# 更改内容

# 3.找到Defaults env_reset, 将其改为Defaults !env_reset

# 退出当前用户，切换到要使用的用户,编辑文件

sudo vi ~/.bashrc

# 在最后一行添加
alias sudo='sudo env PATH=$PATH'

# 执行命令，如果不起作用，重启系统
source ~/.bashrc  