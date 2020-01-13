#--------------------------------------------------
# Title：     开启docker 远程连接
# CreateTime：2020-01-13
# Author：    icehardStone 
#--------------------------------------------------

sudo vi /etc/docker/daemon.json

# write content 
# "hosts":["tcp://0.0.0.0:2375","unix"///var/run/docker.sock"]

 