# rabbitmq server

## Installation and Provisioning

### Windows installer, Windows-specific issues

使用 installer 安装，下载安装包[rabbitmq-server-3.8.2.exe](https://github.com/rabbitmq/rabbitmq-server/releases/download/v3.8.2/rabbitmq-server-3.8.2.exe)直接安装

**Important** Erlang 开发环境必须要安装

``` shell
启动Rabbitmq

./sbin/rabbitmq-serber start
```

验证rabbitmq 是否安装成功

``` shell

http://localhost:15672/mgmt

#如果不能访问可能是没有启用rabbitmq_management 这个插件

rabbitmq-plugins enable rabbitmq_management #启动插件
rabbitmq-plugins list #查看支持的插件
```

### Docker 安装

sudo docker pull rabbitmq:latest

sudo docker run -d -p 15672:15672 -p 5672:5672 --name rabbitmq rabbitmq:latest

## CLI tools

### CLI Tools Overview

* rabbitmqctl 为服务管理和正常的操作任务。
* rabbitmq-diagnostics 诊断和健康检查。
* rabbitmq-plugin 为插件管理
* rabbitmq-queue 为维持任务在队列中
* rabbitmqadmin 通过http api 操作任务。

### rabbitmqclt(rabbitmqclt.bat on windows)

rabbitmqctl 是原始的CLI 工具，它支持一个广泛的操作，大多数的管理型操作。

包括:

* Stopping node
* Access to 节点状态，有效的配置和健康检查
* 虚拟主机管理
* 用户和权限管理
* 策略管理
* 列出队列，连接，通道，交换，和消费者
* 集群成员管理

> rabbitmqctl add_user <username> <password>

### rabbitmq-plugin(rabbitmq-plugins.bat on windows)

rabbitmq-plugins 是一个工具管理插件的工具，列出，启用禁用插件。支持在线和离线两种方式。

### rabbitmqadmin(require management plugin)

### man page
