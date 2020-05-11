#!/bin/bash 

#编辑文件 

sudo  vi  /etc/ssh/sshd_config


# 1， 允许用户

echo "AllowUsers user3" >> /etc/ssh/sshd_config

#果你想要允许多个用户，那么你可以在添加用户时在同一行中用空格来隔开他们。

# 2，禁止用户

echo "DenyUsers user1" >> /etc/ssh/sshd_config

# 3，允许组

echo "AllowGroups 2g-admin" >> /etc/ssh/sshd_config

# 4，阻止组

 echo "DenyGroups 2g-admin" >> /etc/ssh/sshd_config