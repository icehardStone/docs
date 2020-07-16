# 标题 CentOS 下bridge-utils工具的使用

## 第一节 网桥的作用

&nbsp;&nbsp;网桥（Bridge）是早期的两端口二层网络设备。网桥的两个端口分别有一条独立的交换信道，不是共享一条背板总线，可隔离冲突域。网桥比集线器（Hub）性能更好，集线器上各端口都是共享同一条背板总线的。后来，网桥被具有更多端口、同时也可隔离冲突域的交换机（Switch）所取代。
网桥（Bridge）像一个聪明的中继器。中继器从一个网络电缆里接收信号， 放大它们，将其送入下一个电缆。相比较而言，网桥对从关卡上传下来的信息更敏锐一些。网桥是一种对帧进行转发的技术，根据MAC分区块，可隔离碰撞。网桥将网络的多个网段在数据链路层连接起来。
网桥也叫桥接器，是连接两个局域网的一种存储/转发设备，它能将一个大的LAN分割为多个网段，或将两个以上的LAN互联为一个逻辑LAN，使LAN上的所有用户都可访问服务器。
扩展局域网最常见的方法是使用网桥。最简单的网桥有两个端口，复杂些的网桥可以有更多的端口。网桥的每个端口与一个网段相连。

[百度百科](https://baike.baidu.com/item/%E7%BD%91%E6%A1%A5/99310?fr=aladdin)

## 第二节 常用命令

``` shell

brctl --help

commands:
        addbr           <bridge>                add bridge
        delbr           <bridge>                delete bridge
        addif           <bridge> <device>       add interface to bridge
        delif           <bridge> <device>       delete interface from bridge
        hairpin          <bridge> <port> {on|off}        turn hairpin on/off
        setageing         <bridge> <time>         set ageing time
        setbridgeprio       <bridge> <prio>         set bridge priority
        setfd           <bridge> <time>         set bridge forward delay
        sethello          <bridge> <time>         set hello time
        setmaxage         <bridge> <time>         set max message age
        setpathcost        <bridge> <port> <cost>  set path cost
        setportprio        <bridge> <port> <prio>  set port priority
        show            [ <bridge> ]            show a list of bridges
        showmacs         <bridge>                show a list of mac addrs
        showstp          <bridge>                show bridge stp info
        stp            <bridge> {on|off}       turn stp on/off
```
