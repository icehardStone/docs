# CentOS 7 网络配置

## 1.1 netstat 命令

### 查看TCP 连接状态

``` shell
netstat -nat
netstat -ant
```

## 配置路由的三种方式

* route命令

> 查看: route -n  
> 添加:  
> route add [-net | -host] target [netmask Nm] [gw Gw] [Dev If]  
> 示例：  
> 目标：192.168.1.3  网关：172.16.0.1（必须与本地地址在同一网络）  
> route add  -host   [192.168.1.3]('')    gw  [172.16.0.1]('')   dev  [eth0]('') (经过的本地网卡)

* ip route 命令

``` shell  
        ip route show  
        ip route flush                          #清空整个路由表  
```

* 直接修改配置文件
  