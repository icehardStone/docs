

#!/bin/bash

#sudo执行命令时提示找不到该命令？

#解决办法
#1、切换到root用户， 以root用户身份来编辑文件/etc/sudoers：

vim /etc/sudoers

#找到Defaults env_reset, 将其改为Defaults !env_reset，
#然后wq!强制保存退出。
#2、 切换回普通用户如用户名为xx, 编辑/etc目录下的配置文件bashrc：

#vim bashrc

#在文件内最后追加：

alias sudo='sudo env PATH=$PATH'

#是修改后的配置文件生效：

source bashrc
