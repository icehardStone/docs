#!/bin/bash
echo "loading bridge-utils-1.5-9.el7.x86_64.rpm ..................."
sudo yum localinstall ./bridge-utils-1.5-9.el7.x86_64.rpm

echo "stop docker service"
sudo service docker stop

echo "down docker0 bridge"
sudo ip link set dev docker0 down
sudo brctl delbr docker0


echo "up docker0 bridge $1"
sudo brctl addbr docker0
sudo ip addr add $1 dev docker0  #192.188.0.1/24
sudo ip link set dev docker0 up

sudo ip route 
sudo ifconfig docker0

echo "restart docker"
sudo systemctl restart docker


# route add -host 192.168.1.1 dev 192.168.0.1
# tracert www.baidu.com