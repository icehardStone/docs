# MySQL innodb 集群

MySQL InnoDB 集群提供了完全的高可用解决方案为MySQL，MySQL Shell 包含AdminAPi 能够使你轻松的配置和管理至少三个MySQL实例群组。

## 配置设想

InnoDB cluster 支持一下两种部署方式

### 生产部署

提供高可用的InnoDB生产部署

### 沙箱部署

仅仅用于测试

## InnoDB 集群要求

* 组复制
* 启用性能模式
* 安装MySQL shell

## 采用组复制部署

### 应用条件

* 已经存在一个组复制并同时想在此基础上创建一个集群

### 部署方式

``` js
mysql-js> var cluster = dba.createCluster('prodCluster', {adoptFromGR: true});

A new InnoDB cluster will be created on instance 'root@gr-member-2:3306'.

Creating InnoDB cluster 'prodCluster' on 'root@gr-member-2:3306'...
Adding Seed Instance...

Cluster successfully created. Use cluster.addInstance() to add MySQL instances.
At least 3 instances are needed for the cluster to be able to withstand up to
one server failure.
```