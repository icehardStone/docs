# 第二章 MySQL Installing and Upgrading

此小结秒速了如何获取和安装MySQL.在你更新MySQL之前应该考虑到更多的升级程序和注意事项。

## 2.1 安装步骤

* 决定MySQL运行和支持的平台
* 选择版本
* 下载该版本
* 安装该版本
* 执行任何必要的安装后设置
  
## 2.2 Unix,Linux,FreeBSD

Linux 为安装MySQL提供了很多的解决方案，安装方法如下图所示：

### 2.2.1 Yum

MySQL Yum reposity 为Oracle Linux,Red Hat Enterprise Linux, CentOS, Fedora 安装MySQL server, MySQL Workbench, MySQL Utilities,MySQL Router,MySQL Shell 提供了 RPM 包。

Before You Start  

下面的安装指导假设MySQL未安装第三方发行版本包，

1. 添加 MySQL Yum Repository
   * 去[页面](https://dev.mysql.com/downloads/repo/yum/) 下载 MySQL Yum Repository.
   * 选择适合该平台的版本包
   * 使用下列命令安装版本包

      ``` Shell
        sudo yum localinstall platform-and-version-specific-package-name.rpm
      ```

      ``` Shell
        yum repolist enabled | grep "mysql.*-community.*"
      ```

2. 选择版本系列

当使用MySQL Yum repository,最新的GA系列是默认选择，在MySQL Yum Reposity 不同的MySQL Community Server 在不同的子仓库中：

查看所有的版本：

``` shell

yum repolist all | grep mysql

```

示范：

``` shell

sudo yum-config-manager --disable mysql57-community
sudo yum-config-manager --enable mysql80-community

```

确定正确的版本:

``` shell

yum repolist enabled | grep mysql

```

禁用默认的版本

``` shell

sudo yum module disable mysql

```

安装MySQL

``` shell

sudo yum install mysql-community-server

```

开启 MySQL Server

``` shell

sudo service mysqld start

```

### 2.2.2 RPM

这儿有两种源对于获取MySQL 社区版本

* 从 MySQL 软件仓库
  * The MySQL Yum reposity
  * The MySQL SLES reposity
* 从MySQL Developer Zone 下载
  
查看所有的 RPM 包

``` shell

rpm -qpl mysql-community-server-version-distribution-arch.rpm

```

大多数情况下，你需要安装 Mysql-community-server,mysql-community-client,mysql-community-libs,mysql-community-common,and mysql-community-libs-compat包。

``` shell

sudo yum install mysql-community-{server,client,common,libs}-*

```

开启

``` shell

sudo systemctl start mysqld

```

### 2.2.3 Docker

Docker 部署框架支持非常简单的安装和部署MySQL Server,下文解释类如何在Docker 中使用MySQL Server Docker 镜像。

``` Shell

#拉取镜像
sudo docker pull mysql/mysql-server:tag

#docker images

#运行docker容器
docker run --name=mysql1 \
--mount type=bind,src=/path-on-host-machine/my.cnf,dst=/etc/my.cnf \
--mount type=bind,src=/path-on-host-machine/datadir,dst=/var/lib/mysql \
-d mysql/mysql-server:tag

#
docker exec -it mysql:tag bash

```

### 2.2.4 Source

## Microsoft Windows

## macOS
