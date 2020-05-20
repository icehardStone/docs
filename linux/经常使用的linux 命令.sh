# !/bin/bash 

# 按照使用内存大小，列出进程

ps aux --sort=rss |sort -k 6 -rn

# // 生成SSH证书并复制到远端服务器：

ssh-keygen -y -f ~/.ssh/id_rsa &&　cat ~/.ssh/id_rsa.pub | ssh root@host "cat - >> ~/.ssh/authorized_keys"


# //  替换默认文件的第23行 “test" 为 ”testreplace“

sed -i    "/23s/test/testreplace/g"     ./test.txt

# 查看第3行第1列的内容

sed -n "/3p" ./test.txt | cut -d " " -f1 
head -n3 ./test.txt | tail -n1   | cut -d "" -f1
awk -F " " 'NR==3{print $1}' ./test.txt


# 删除每个临时文件的最初三行

sed –i ‘1,3d’             /tmp/*.tmp

# 删除第4至7行

sed -i "4,7d"          /tmp/*.tmp
