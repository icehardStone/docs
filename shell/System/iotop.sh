#!/bin/bash

#iotop          command  -  监控磁盘I/O状态


iotop               -o              #只显示有IO操作的进程

iotop               -b              #批量显示

iotop               -d              #间隔SEC秒显示一次

iotop               PID             #监控进程PID

iotop               USER          #监控的进程用户
