# 1. zabbix 阅读手册

## 1.1. zabbix 简介

zabbix 是一个监控系统，被用来监控IT基础设施的可用性和性能。

## 1.2. zabbix 组成

    * Zabbix Server
    * Zabbix Client

## 1.3. 选择Zabbix的理由

    * 监控系统能够自定义监控的内容，可以自己写脚本来收集所需要的数据
    * 数据保存在数据库中
    * 数据可视化不要很花哨，但是要好用
    * 可以定义复杂的报警逻辑

## 1.4. Zabbix的基本的概念

    * Zabbix Server: Zabbix的控制中心，收集数据，写入数据库都是他的工作
    * Zabbix Agent：部署在被监控服务器上的一个进程，负责和Zabbix Server交互，执行命令
    * Host：广义上的服务器，大多数情况下指代刀片机这类，在少部分情况时间会指代包括交换机在内的被Zabbix监控的实体
    * Item：对于某一个指标的监控，对应的是Items,英文原意是“物品”，比如某台服务器的CPU负载就是一个Item.
    * Trigger：一些逻辑规则的组合，它有三个值，正常，异常，未知。
    * Action：当Trigger符合某个值的时候，Zabbix会进行的操作，比如最常见的发邮件

## 1.5. Zabbix数据库配置

创建数据库时，Zabbix Server需要初始化数据库的Scheme和其中的数据，Zabbix代理只需要初始化数据库的Scheme，对于Zabbix Agent来说，不需要数据库的支持

### 1.5.1. MySQL数据库配置

    ``` shell
    shell> mysql -uroot -p123456 #自己设置一个MySQL用户并配置权限
    mysql> create database zabbix character set utf8 collate utf8_bin;
    mysql> quit;
    shell> mysql -uroot -p123456 zabbix < database/mysql/schema.sql
    shell> mysql -uroot -p123456 zabbix < database/mysql/images.sql
    shell> mysql -uroot -p123456 zabbix < database/mysql/data.sql
    ```

### 1.5.2. PostgreSQL

    ``` shell
    shell> psql -U root
    psql> create database zabbix;
    psql> \q
    shell> cd database/postgresql
    shell> psql -U root zabbix < schema.sql
    shell> psql -U root zabbix < images.sql
    shell> psql -U root zabbix < data.sql
    ```

### 1.5.3. 安装Zabbix Server

#### 1.5.3.1. 创建用户

    ``` shell
    groupadd zabbix
    useradd -g zabbix zabbix            #如果Zabbix Server 和Zabbix Agent 是在同一台机器上面运行的话，最好使用两个用户
    passwd zabbix
    ```

#### 1.5.3.2. 编译源代码

    ``` shell
    ./configure --enable-server --enable-agent --with-mysql --with-net-snmp --with-libcurl --with-libxml2 --with-openipmi --with-unixodbc --prefix=/apps/svr/zabbix
    ```

    * --enable-server  安装server
    * --enable-agent  安装agent
    * --with-mysql   使用mysql作为数据库
    * --with-net-snmp   开启snmp监控
    * --with-libxml2    需要监控虚拟机的功能
    * --prefix      指定Zabbix的安装目录

### 1.5.4. 安装Zabbix Web前端

    ``` shell
    sudo yum install php53
    sudo yum install httpd
    ```

#### 1.5.4.1. Zabbix MySQL 安装依赖配置

    ``` shell
    sudo yum install php53-mysql php53-bcmath php53-mbstring php53-gd php53-xml
    ```

### 1.5.5. 安装Zabbxi Agent

    ``` shell
    cd $ Zabbix src oir configure-endde-agent make install
    ```

## 配置文件详解

Zabbix 的配置虽然不是十分复杂，但是也不少，

### zabbix_server.conf

| 参数名称   | 是否必须  | 默认值  | 解释   |
| :--------:  | :--------: | :-------: | :--------:|
| NodeID | 否 | 0 | 在Master-Child 的分布式架构中，这个ID是唯一标识Zabbix Node的号码 |
| ListenPort | 否 | 10051 | Trapper 类型Item监听的端口 |
| SourceIP | 否 | 空 | 连接其他服务器时，使用的本机IP地址 |
| LogFile | 否 | 如果不设置，会使用syslog | 存放在Zabbix Server 日志文件的地方，需要指定 |
| LogFileSize | 是 | 1 | 单个日志文件的大小，单位是MB |
| DebugLevel | 否 | 3 | 定义打印的日志等级：0：打印日志，1：打印重要的错误日志，2：打印错误日志，3：打印警告信息，4：打印调试信息|
| PidFile | 否 | /tmp/zabbix_server.pid | 记录Zabbix Server pid的文件位置 |
| DBHost | 否 | localhost | Zabbix Server数据库的位置 |
| DBName | 是 | 空 | 数据库名字 |
| DBUser | 否 | 空 | 数据库用户名 |

## 监控服务器

在监控系统中，核心对象是服务器，一般来说，监控都是针对服务器而言的，而对于服务器来说，核心是其Item,有了Item,就可以发现监控指标的异常。

服务器在监控系统中的活动，主要有以下三点

* 监控指标数据
* 数据异常时候报警
* 监控数据的数据可视化

