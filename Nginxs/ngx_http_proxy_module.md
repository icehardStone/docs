# ngx_http_proxy_module

**ngx_http_proxy_module** 允许代理请求到另一个服务器。

## sample

``` shell
location / {
    proxy_pass http://locahost:80010;
    proxy_set_header Host $host;
    proxy_set_header X-Real-IP $remote_addr;
}
```

### proxy_buffer_size

设置为读取从代理服务器收到的响应的第一部分所使用的缓存区大小，

syntax : proxy_buffer_size size;  
default: proxy_buffer_size 4k | 8k;  
context: http,server,location  

### proxy_buffering

启用或者禁用代理服务器缓存

> sample  
syntax: proxy_buffering on | off;  
default: proxy_buffering on;  
context: http,server,location  

### proxy_buffers

设置为从代理服务器读取响应所使用的缓存区数量和大小。


