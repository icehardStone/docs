#！ /bin/bash

#  加载镜像
sudo docker load  -i   ./mysql.tar


# 容器内外复制文件

# 本地复制到容器中
sudo docker cp  ./test.dll     container_name:dest_path


# Usage:  docker cp [OPTIONS] CONTAINER:SRC_PATH DEST_PATH|-
#         docker cp [OPTIONS] SRC_PATH|- CONTAINER:DEST_PATH

# Copy files/folders between a container and the local filesystem

# Options:
#   -a, --archive       Archive mode (copy all uid/gid information)
#   -L, --follow-link   Always follow symbol link in SRC_PATH


