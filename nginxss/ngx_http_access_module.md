# ngx_http_access_module

## example configuration

``` shell
location / {
    deny 192.168.0.1;
    allow 192.168.1.0/24;
    allow 192.168.45.23;
}
```

## allow

``` shell
Syntax:allow address | CIDR | unix: | all;
Default:—
Context:http, server, location, limit_except
```

Allows access for the specified network or address. If the special value unix: is specified (1.5.1), allows access for all UNIX-domain sockets.

## deny

``` shell
Syntax:deny address | CIDR | unix: | all;
Default:—
Context:http, server, location, limit_except
```
