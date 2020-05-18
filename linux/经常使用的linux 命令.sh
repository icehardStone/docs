# !/bin/bash 

# 按照使用内存大小，列出进程

ps aux --sort=rss |sort -k 6 -rn

# // 生成SSH证书并复制到远端服务器：

ssh-keygen -y -f ~/.ssh/id_rsa &&　cat ~/.ssh/id_rsa.pub | ssh root@host "cat - >> ~/.ssh/authorized_keys"