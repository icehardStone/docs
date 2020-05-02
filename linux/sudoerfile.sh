#!/bin/bash

#当在终端执行sudo命令时，系统提示“hadoop is not in the sudoers file”：

#其实就是没有权限进行sudo，解决方法如下（这里假设用户名是cuser）：

#1.切换到超级用户：$ su

#2.打开/etc/sudoers文件：$vim /etc/sudoers

#3.修改文件内容：

#找到“root    ALL=(ALL)       ALL”一行，在下面插入新的一行，内容是“hadoop   ALL=(ALL)       ALL”，然后在vim键入命令“:wq!”保存并退出。

#注：这个文件是只读的，不加“!”保存会失败。

#.退出超级用户：$ exit