# 安装Nginx

## 前言

nginx 是一个 **http** 和 **reverse proxy** 服务器，一个 **mail** 服务器，一个 **TCP/UDP**代理服务器，最初是lgor Sysocv编写。
很长一段时间以来，他已经运行在高负载的俄罗斯站点上，例如 Yandex,Mail.Ru ,VK 和 Rambler.Nginx已经服务了25.44%的商业网站。有一些成功的商业例子：Dropbox,Netflix,Wordpress.com,FastMain.FM.

## 安装方式

* ### CentOS
  
    #### Yum 安装

    ``` shell
    sudo yum -y install nginx
    #删除nginx sudo yum remove nginx
    ```

    如果安装的时候提示错误

    ``` shell
    没有可用的软件包 nginx

    ```

    添加nginx源

    ``` shell
    rpm -ivh http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm
    ```

    #### 源码安装

    **自行百度**

* ### Windows

    到站点[http://nginx.org/en/download.html](http://nginx.org/en/download.html) 下载 *.zip 文件，直接解压到一个目录中去。

* ### Docker

    拉取nginx镜像

    ``` shell
    docker pull nginx:version           版本号
    ```

    运行docker容器

    ``` shell
    sudo docker run --name nginx -v $PWD/nginx.conf:/etc/nginx/nginx.conf -p 8080:80 -d nginx:version
    ```

    进入容器内部

    ``` shell
    sudo docker exec -it nginx /bin/bash
    ```

## 配置nginx服务

``` shell
systemctl enable nginx
service nginx start
service nginx stop
service nginx restart
service nginx reload
```
