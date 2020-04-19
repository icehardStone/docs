#!/bin/bash
# 下载地址 https://download.docker.com/linux/static/stable/x86_64/docker-17.12.0-ce.tgz
sudo tar xzvf ./docker-17.12.0-ce.tgz
sudo docker cp ./docker/* /usr/bin

sudo dockerd &

#如果需要使用其他选项启动守护进程，修改相应的命令,创建扁家/etc/docker/daemon.json文件