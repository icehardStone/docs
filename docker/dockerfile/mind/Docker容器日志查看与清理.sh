#!/bin/bash 

# 方法一

# 找出Docker容器日志
# 在linux上，容器日志一般存放在/var/lib/docker/containers/container_id/下面， 以json.log结尾的文件（业务日志）很大，
# 获取container_id

sudo docker inspect cotnainer_name # 容器名称
cat /dev/null > /var/lib/docker/containers/container_id/container_id-json.log


# 方法二



# nginx: 
#   image: nginx:1.12.1 
#   restart: always 
#   logging: 
#     driver: “json-file” 
#     options: 
#       max-size: “5g” 

# 设置 daemon.json 


# vim /etc/docker/daemon.json

# {
#   "registry-mirrors": ["http://f613ce8f.m.daocloud.io"],
#   "log-driver":"json-file",
#   "log-opts": {"max-size":"500m", "max-file":"3"}
# }

# 重启docker

systemctl reload daemon
systemctl restart docker