#!/bin/bash 

# 一、1、输入su root进入root模式

# 　　2、输入visudo会打开/etc/sudoers文件
# 　　3、找到%sudo ALL=(ALL:ALL) ALL这一行修改为%sudo ALL=(ALL:ALL) NOPASSWD:ALL
# 　　4、在文件里面输入o就会进去编辑模式
# 　　5、按下键盘esc退出编辑
# 　　6、然后输入:x保存退出文件
# 　　7、exit退出root模式
# 　　8、这样以后输入sudo就不会提示输入密码了

# 二、在/etc/sudoers.d/下面创建文件，比如：

# 创建了一个add_sudo文件
# 在里面添加%sudo ALL=(ALL:ALL) NOPASSWD:ALL


# sudo 不需要输入密码

echo "$1   ALL=(ALL)    NOPASSWD:ALL"  >> /etc/sudoers    # $1 为输入用户名