# docker 创建私有仓库

<!-- 安装docker-compose  -->

``` shell
curl -L https://github.com/docker/compose/releases/download/1.13.0/docker-compose    -`uname -s`-`uname -m` > /usr/local/bin/docker-compose
```

<!-- 配置权限 -->

chmod +x /usr/local/bin/docker-compose

<!-- 查看是不是安装成功 -->

docker-compose --version
