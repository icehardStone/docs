#!/bin/bash

# 执行 docker info 出现错误

error during connect: Get http://%2F%2F.%2Fpipe%2Fdocker_engine/v1.31/info: open //./pipe/docker_engine: The system cannot find the file specified. In the default daemon configuration on Windows, the docker client must be run elevated to connect. This error may also indicate that the docker daemon is not running.

# // 解决方法

# 执行命令: docker-machine env default

# C:\Users\admas>docker-machine env default

# 步骤一

# SET DOCKER_TLS_VERIFY=1
# SET DOCKER_HOST=tcp://192.168.99.100:2376
# SET DOCKER_CERT_PATH=C:\Users\admas\.docker\machine\machines\default
# SET DOCKER_MACHINE_NAME=default
# SET COMPOSE_CONVERT_WINDOWS_PATHS=true
# REM Run this command to configure your shell:
# REM     @FOR /f "tokens=*" %i IN ('docker-machine env default') DO @%i

# 步骤二

# 执行命令: @FOR /f "tokens=*" %i IN ('docker-machine env default') DO @%i

