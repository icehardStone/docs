# ngx_http_core_module

## absolute_redirect

``` shell
Syntax: absolute_redirect  on | off;
Default: absolute_redirect on;
Context: http,location,server;
```

如果禁用，nginx重定向将是相对的。

## aio

``` shell
Syntax: aio  on | off | threads[=pool]
Default: aio off;
Context: http;server,location;
```

禁用或者启用文件异步文件IO

Sample:

``` shell
server {
    location /vedio/ {
        aio on;
        output_buffers 1 64k;
    }
}
```

## aio_write

``` shell
Syntax: aio_write on | off;
Default: aio_write off;
Context: server,location,http;
```

如果 **aio** 启用定义它是否被用于写文件。

## client_body_buffer_size

``` shell
Syntax: client_body_buffer_size;
Default:  client_body_buffer_size 8k | 12k;
Context: http;server;location;
```

设置读取客户端请求正文主体缓冲区大小。

## client_body_time_out

``` shell
Syntax: client_body_time_out time;
Defalut: client_body_time_out 60s;
Context: http;server;location;
```

定义读取客户端请求正文主体超时时间。

## client_header_buffer_size

``` shell
Syntax: client_header_buffer_size size;
Default: client_header_buffer_size 1k;
Context: http;server;location
```

定义读取客户端请求头部信息缓冲区大小

## client_header_time_out

``` shell
Syntax: client_header_time_out time;
Default: client_header_time_out 60s;
Context: server;http;
```

定义客户端请求头部信息超时时间

## client_max_body_size

``` shell
Syntax: client_max_body_size size;
Default: client_max_body_size 1M;
Context: http;server;
```

定义客户端请求主体正文最大大小
