#!/bin/bash 

sudo docker exec -it redis /bin/bash

redis-cli

BGREWRITEAOF

# 查看文件大小
ls -l 