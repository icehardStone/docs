# ngx_upstream_module

## keepalive connections

激活会话缓存对于upstream 服务器

syntax: keepalive connections
Default: ---------
Context: upstream;

设置最大的缓存会话数，如果连接会话大于设定值，则最早的那个连接会被断开.

### sample

``` shell

upstream backend {
    keepalive 32;

    server 127.0.0.1:6235;
    server 127.0.0.1:5678;
}
```

## keepalive_request

设置缓存会话的最大请求次数，超过该次数，该次会话会被关闭

syntax: keepalive_request;
default: 100;
Context: upstream;

``` shell

upstream backend {
    keepalive 32;
    keepalive_request 200;

    server 192.168.110.56:50023;
}
```
