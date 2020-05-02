#!/bin/bash

# 方法一：

#控制SELinux的位置在系统/etc/selinux/config文件中，将SELINUX=enforcing改为SELINUX=disabled，永久关闭SELinux状态


# 方法二：

#用这种解决了问题。

#3.添加selinux规则，改变要挂载的目录的安全性文本

chcon -Rt svirt_sandbox_file_t                   ./soft
