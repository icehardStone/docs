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
————————————————
版权声明：本文为CSDN博主「pushiqiang」的原创文章，遵循 CC 4.0 BY-SA 版权协议，转载请附上原文出处链接及本声明。
原文链接：https://blog.csdn.net/pushiqiang/java/article/details/78682323

pip install -i https://pypi.tuna.tsinghua.edu.cn/simple pip -U