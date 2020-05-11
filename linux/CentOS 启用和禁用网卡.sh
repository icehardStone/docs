#!/bin/bash 

# 1, ifconfig

ifconfig enp0s3 down
ifconfig enp0s3 up

# 2, ifdown ,ifup

ifdown eth3
ifup eth3

# 3， if

ip link set enp0s3 down
ip link set enp0s3 up

# 4, nmcli

nmcli con  Down/Up