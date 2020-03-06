#!/bin/bash

sudo rabbitmqctl add_user <username> <password>

#sample

# 新增用户
sudo rabbitmqctl add_user admas 123456

# 分配标签

sudo rabbitmqctl set_user_tags admas administrator

# 主机

rabbitmqctl set_permissions -p "/" userName ".*" ".*" ".*"
