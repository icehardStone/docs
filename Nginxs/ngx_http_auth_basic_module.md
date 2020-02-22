# ngx_http_auth_basic_module

**ngx_http_auth+basic_module** 通过 http basic authentication 协议验证用户名称和密码限制性访问资源。

## sample

``` shell
location / {
    auth_basic "acess limiting";
    auth_basic_user_file /usr/share/nginx/data;
}
```

## Directives

``` shell
Syntax:auth_basic string | off;
Default:
auth_basic off;
Context:http, server, location, limit_except
```

Enables validation of user name and password using the “HTTP Basic Authentication” protocol. The specified parameter is used as a realm. Parameter value can contain variables (1.3.10, 1.2.7). The special value off allows cancelling the effect of the auth_basic directive inherited from the previous configuration level.

## auth_basic_usr_file

``` shell
Syntax:auth_basic_user_file file;
Default:—
Context:http, server, location, limit_except
```

Specifies a file that keeps user names and passwords, in the following format:

## comment

``` shell
name1:password1
name2:password2:comment
name3:password3
The file name can contain variables.
```
