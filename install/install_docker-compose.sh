#!/bin/bash

sudo yum -y install epel-release

sudo yum install -y python

sudo yum install -y python3-pip.noarch

sudo yum -y install python-pip

sudo  pip install --upgrade pip

sudo yum install python-devel

#pip install -i https://mirrors.ustc.edu.cn/pypi/web/simple package            https://mirrors.tuna.tsinghua.edu.cn
#pip install -i https://pypi.tuna.tsinghua.edu.cn/simple some-package
sudo pip install -i https://mirrors.ustc.edu.cn/pypi/web/simple # ./docker_compose-1.25.4-py2.py3-none-any.whl  --ignore-installed requests

pip install   -i https://mirrors.ustc.edu.cn/pypi/web/simple  ./docker_compose-1.25.4-py2.py3-none-any.whl  --ignore-installed subprocess32


#sudo curl -L https://get.daocloud.io/docker/compose/releases/download/1.25.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

pip install -i https://pypi.tuna.tsinghua.edu.cn/simple pip -U



# 离线安装Docker-Compose 

# 在github上下载 docker-compose-Linux-x86_64
# 下载地址:  https://github.com/docker/compose/releases/download/1.25.5/docker-compose-Linux-x86_64

# 将下载下来的“docker-compose-Linux-x86_64”文件上传到服务器上，然后执行如下命令将其移动到 /usr/local/bin，并改名为“docker-compose”。

sudo mv docker-compose-Linux-x86_64 /usr/local/bin/docker-compose

# 添加可执行权限

sudo chmod +x /usr/local/bin/docker-compose

# 命令测试是否安装成功
docker-compose -v 