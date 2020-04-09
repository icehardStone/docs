# [A debugging log](http://nginx.org/en/docs/debugging_log.html)

* Debugging log for selected clients
* Logging to a cyclic memory buffer

为了能够支持调试日志，nginx在build时需要被赔配置支持debugging

``` shell
./configure --with-debug
```

通过 **error_log** 指令设置debug等级

``` shell
error_log /path/to/log debug;
```

debug 调试等级：

* info
* debug
* error

实例：

``` shell
http {
    server {
        error_log /path/to/log debug;
    }
}
```

## debugging log for selected client

``` shell
error_log /path/to/log

events {
    debug_connection 192.168.1.1;     #ip地址
    debug_connection 192.168.1.0/24;  #24网段
}
```
