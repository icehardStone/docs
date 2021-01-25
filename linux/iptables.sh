#!/bin/bash

#iptables 命令

/sbin/iptables -A input -p tcp -dport 22 -s 192.168.18.100 -j ACCEPT
/sbin/iptables -A input -p udp -dport 22 -s 192.168.18.100 -j ACCEPT
/sbin/iptables -P input DROP