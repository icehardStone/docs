# [begin guide](http://nginx.org/en/docs/beginners_guide.html)

本结了一个基础的介绍关于nginx和描述了一些简单的任务。本结假设nginx已经被安装好在读者的机器上。

本结描述了怎样去 **start**, **stop**, **reload it's configuration**。解释了配置文件的结构。阐述了怎样设置nginx提供静态内容服务，怎样配置nginx作为一个代理服务器，怎样使用FastCGI应用连接ngix

nginx 有一个主进程和几个工作进程。

nginx和它的模块的工作方式取决于配置文件。默认的，配置文件的名称为 **nginx.conf**，被放置在目录 /**etc/nginx** 或者 **/usr/local/etc/nginx**。

## Starting,Stopping,Reloading Configuration

### use the follow syntax

``` shell
nginx -s signal
```

#### fast shutdown

``` shell
nginx -s stop
```

#### graceful shutdown

``` shell
nginx -s quit
```

#### reload the configuration file

``` shell
nginx -s reload
```

#### reopen

``` shell
nginx -s reopen
```

## Serving Static Content

一个重要的web 服务器任务是作为图片或者静态页面服务器。

``` shell
location / {
    root /data/www;
}
```

若访问地址为http:address:80/image/data.html,则物理路径为 /data/www/image/data.html

if there are serveral matching location blocks nginx selects the one with the longest prefix.

``` shell
server {
    location / {
        root /data/www;
    }
    location /images/ {
        root /data
    }
}

```

``` shell
server {
    location ~\.(gif|jpg|png)$ {
        root /data/images
    }
}
```

使用正则表达式匹配 以 .gif .jpg .png 结尾的文件。
