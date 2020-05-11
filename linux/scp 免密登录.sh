#!/bin/bash

#scp免密码拷贝和ssh免密码登录

#在平常的工作中经常在两个服务器之间传输文件，而且经常从本地远程登录服务器，每次都要输入密码显然很没效率，这时候该怎么办呢？
#首先假设服务器A和B，要想实现从A向B复制文件或者从B获取文件，也就是： scp -r "some files in A" B:/somewhere 或者 scp -r B:/somewhere/somefiles "somewhere in A"

# 按照下列步骤设置：

# 1. 在A中执行命令： /root 目录下执行， 且用户为root

ssh-keygen -t rsa -P ""
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

 