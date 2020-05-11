#!/bin/bash 

#1、将脚本移动到/etc/rc.d/init.d目录下

mv  /opt/script/autostart.sh /etc/rc.d/init.d

#2、增加脚本的可执行权限

chmod +x  /etc/rc.d/init.d/autostart.sh

#3、添加脚本到开机自动启动项目中

cd /etc/rc.d/init.d

chkconfig --add autostart.sh
chkconfig --list

chkconfig autostart.sh on


#二、自定义服务文件，添加到系统服务，通过Systemctl管理