#!/bin/bashs

#本地搭建gitlab仓库

# step 1 下载gitlab rpm 包

curl -s https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.rpm.sh | sudo bash

# step 2 编辑配置文件

sudo vi /etc/gitlab/gitlab.rb

# step 3 校验配置文件

sudo gitlab-ctl reconfigure

#step 4 启动gitlab

sudo gitlab-ctl start