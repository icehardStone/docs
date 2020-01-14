# CentOS 防火墙配置

## 查看防火墙状态

``` shell
sudo systemctl status firewalld
```

返回结果:

![图 1-1](./images/firewallStatus.png)

## 开启防火墙

``` shell
sudo systemctl restart firewalld
```

## 关闭防火墙

``` shell
sudo systemctl stop firewalld
```
