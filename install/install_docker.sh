#!/bin/bash
# 下载地址 https://download.docker.com/linux/static/stable/x86_64/docker-17.12.0-ce.tgz
sudo tar xzvf ./docker-17.12.0-ce.tgz
sudo cp ./docker/* /usr/bin

sudo dockerd &

#如果需要使用其他选项启动守护进程，修改相应的命令,创建扁家/etc/docker/daemon.json文件

## yum 方式安装


# 离线安装docker-compose

sudo mv $1/conf/other/docker-compose-Linux-x86_64 /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose



# 离线安装docker


sudo tar xzf $1/install/docker-18.09.4.tgz -C $1/install
sudo cp -r $1/install/docker/* /usr/bin/
sudo cp -r $1/conf/other/docker.service /usr/lib/systemd/system
sudo service docker start
