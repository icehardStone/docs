#!/bin/bash

#设置开机启动
systemctl enable vsftpd.service
sudo chkconfig servicename on /off

# 例子：
sudo chkconfig vsftpd on;