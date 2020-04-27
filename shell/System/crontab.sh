#!/bin/bash

# 安装
sudo yum install crontab


#设置开机自启动
sudo systemctl enable crond

# 启动
sudo systemctl start crond

# 配置定时规则

sudo vi /etc/crontab

#sample

#   59 23 * * * root /home/backup/showdoc/backup.sh

# 保存生效

crontab /etc/crontab

# 查看任务
crontab -l
