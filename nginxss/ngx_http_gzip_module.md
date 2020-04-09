# ngx_http_gzip_module

ngx_http_gzip_module 模块是使用“gzip”方法压缩相应的过滤器。它通常被用于帮助减少传输数据的大小。

## sample

``` shell
gzip on;
gzip_min_length 1000;
gzip_proxied expired no-cache no-store private auth;
gzip_types text/plain application/xml;
```

$zip_ratio 变量被用于记录完成的压缩比率。

## gzip

``` shell
Syntax : gzip on | off;
Default: gzip off;
Context; http, server ,location, if in location;
```

## gzip_buffers

``` shell
Syntax: gzip_buffer number size
Default: gzip_buffer 32 4K | 16 8k;
Context: http, server, location
```

设置压缩缓冲区大小

## gzip_comp_level

``` shell
Syntax: gzip_comp_level level;
Default: gzip_comp_level 1;
Context: http,server,location
```

压缩等级


## gzip_min_length

``` shell
Syntax : gzip_min_length length;
Default: gzip_min_length 20;
Context: http,server,location;
```

设置需要压缩的最小返回长度。

## gzip_proxied

``` shell
Syntax:gzip_proxied off | expired | no-cache | no-store | private | no_last_modified | no_etag | auth | any ...;
Default:gzip_proxied off;
Context:http, server, location
```

Enables or disables gzipping of responses for proxied requests depending on the request and response. The fact that the request is proxied is determined by the presence of the “Via” request header field. The directive accepts multiple parameters:

off
disables compression for all proxied requests, ignoring other parameters;
expired
enables compression if a response header includes the “Expires” field with a value that disables caching;
no-cache
enables compression if a response header includes the “Cache-Control” field with the “no-cache” parameter;
no-store
enables compression if a response header includes the “Cache-Control” field with the “no-store” parameter;
private
enables compression if a response header includes the “Cache-Control” field with the “private” parameter;
no_last_modified
enables compression if a response header does not include the “Last-Modified” field;
no_etag
enables compression if a response header does not include the “ETag” field;
auth
enables compression if a request header includes the “Authorization” field;
any
enables compression for all proxied requests.

## gzip_types

``` shell
Syntax: gzip_types mime_type;
Default: gzip_types text/html;
Context: http,server,location;
```

## gzip_vary

``` shell
Syntax: gzip_vary on | off;
Default: gzip_vary off;
Context: http,server,location
```

如果指令 **gzip**, **gzip_static**, **gunzip** 被激活，开启或者禁用插入“Vary:Accept_Encoding"返回头部信息。
