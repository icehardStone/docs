#!/bin/bash

#scp免密码拷贝和ssh免密码登录

#在平常的工作中经常在两个服务器之间传输文件，而且经常从本地远程登录服务器，每次都要输入密码显然很没效率，这时候该怎么办呢？
#首先假设服务器A和B，要想实现从A向B复制文件或者从B获取文件，也就是： scp -r "some files in A" B:/somewhere 或者 scp -r B:/somewhere/somefiles "somewhere in A"

# 按照下列步骤设置：

# 1. 在A中执行命令： /root 目录下执行， 且用户为root

ssh-keygen -t rsa -P ""
ssh-keygen -t rsa -P "" -f   XXX   #文件名称:  XXX
# 这会在 ~/.ssh 目录下生成两个文件：id_rsa 和 id_rsa.pub

#2. 拷贝A的id_rsa.pub到B：

scp /root/.ssh/id_rsa.pub root@192.168.1.200:/root
#3. 登录B，并把id_rsa.pub输入到B的authorized_keys文件中：

cd /root
cat id_rsa.pub >> .ssh/authorized_keys
#大功告成！此时在复制文件就无需输入密码了。而且，在A中ssh登录B也无需密码了。

#反之亦然，在B中设置A的免密码登录完全一样，在此不做赘述。

 

#2019.06.11更新

#最近需要在两个服务器之间传输文件，（其中一个服务器用一个key file登录）用如下命令：

scp -i file-of-key file-to-copy username@XX.XXX.XX.XXX:/path/of/destination



# 方法二
# ssh-keygen

# [root@localhost ~]# ssh-copy-id root@172.0.1.45
# /usr/bin/ssh-copy-id: INFO: Source of key(s) to be installed: "/root/.ssh/id_rsa.pub"
# /usr/bin/ssh-copy-id: INFO: attempting to log in with the new key(s), to filter out any that are already installed
# /usr/bin/ssh-copy-id: INFO: 1 key(s) remain to be installed -- if you are prompted now it is to install the new keys
# root@192.168.8.21's password:

# Number of key(s) added: 1

# Now try logging into the machine, with:   "ssh 'root@192.168.8.21'"
# and check to make sure that only the key(s) you wanted were added.


# 测试一下
# [root@localhost ~]# scp ma.py  root@192.168.8.21:/root
# ma.py  
 