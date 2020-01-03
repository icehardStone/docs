#--------------------------------------------
# Copyright icestone 
# Title: 	yum 配置国内源
# Author: 	胡光华
# DateTime: 2020/01/03
#--------------------------------------------

sudo yum install -y yum-utils \
					device-mapper-persistent-data \
					lvm2 
# 科大源
sudo yum-config-manager \
    --add-repo \
    https://mirrors.ustc.edu.cn/docker-ce/linux/centos/docker-ce.repo


# 官方源
# $ sudo yum-config-manager \
#     --add-repo \
#     https://download.docker.com/linux/centos/docker-ce.repo