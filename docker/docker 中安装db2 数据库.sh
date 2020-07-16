#!/bin/bash

# 拉取镜像
docker pull ibmoms/db2express-c:latest


# 运行容器

docker run -it --network=host -p50000:50000 -e DB2INST1_PASSWORD=db2root-pwd -e LICENSE=accept ibmcom/db2express-c:latest bash

# 容器中开启

// 切换用户

su DB2INST1

# 开启db2数据库
db2start

# 创建模板数据库

db2sampl
