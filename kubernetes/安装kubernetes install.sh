====================================================================================================================================
Copyright (C) 2020-218 一朵小黄花的开始之作
文件名: 安装kubernetes install.sh
时 间: 2020/07/18 18:50:44
版 本: 1.0
作 者: icehardstone
邮 箱: 1124246349@qq.com
主 题: 安装kubernetes

before i write this only god and i know ,now only god

 文件修改记录
=========================================================================================================================================

#!/bin/bash

# step 1 禁用防火墙和slinux

setenforce 0
getenfore # 查看状态 permissive

systemctl stop firewalld #禁用防火墙
systemctl disable firewalld 

# step 2 安装etcd 和 kubernetes
yum install -y etcd kubernetes

# step 3 修改 /etc/sysconfig/docker文件
修改options的内容为：
options='--selinux-enabled=false --insecure-registry gcr.io'

# step 4：修改/etc/kubernetes/apiserver文件
# 修改KUBE_ADMISSION_CONTROL的内容为

KUBE_ADMISSION_CONTROL="--admission-control=NamespaceLifecycle,NamespaceExists,LimitRanger,SecurityContextDeny,ResourceQuota"

# step 5
# 依次启动服务

systemctl start etcd
systemctl start docker
systemctl start kube-apiserver
systemctl start kube-controller-manager
systemctl start kube-scheduler
systemctl start kubelet
systemctl start kube-proxy