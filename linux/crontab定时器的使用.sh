#!/bin/bash


# 添加定时事件
crontab -e
# 查看所有定时事件
crontab -l

#SHELL=/bin/bash
#PATH=/sbin:/bin:/usr/sbin:/usr/bin
#MAILTO=root

# For details see man 4 crontabs

# Example of job definition:
# .---------------- minute (0 - 59)
# |  .------------- hour (0 - 23)
# |  |  .---------- day of month (1 - 31)
# |  |  |  .------- month (1 - 12) OR jan,feb,mar,apr ...
# |  |  |  |  .---- day of week (0 - 6) (Sunday=0 or 7) OR sun,mon,tue,wed,thu,fri,sat
# |  |  |  |  |
# *  *  *  *  * user-name  command to be executed

#* * * * * admas sudo docker stats --no-stream > /home/admas/ihdis/produse/data/webapi/pm.txt

# attention
# root 用户不需要添加“username”
# example  每隔三十分钟执行一次 /home/echo.sh脚本
# */30 * * * *  /home/echo.sh
