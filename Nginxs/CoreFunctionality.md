# Core functionality

nginx 的核心功能

## Example Configuration

``` shell
user www;
worker_processes 2;

error_log /usr/logs/nginx/error.log info; #日志级别为info

events {
    use kqueue;
    worker_connection 2048;
}
```

## Directive

### accept_mutex

``` shell
Syntax: accept_mutex on | off;
Default: accept_mutext off;
Context events
```

如果accept_mutex 是开启的，工作进程会依次接受新的连接，否则，所有的工作进程都会接受到新连接的信息，如果新连接的体积是很小的话，这些工作进程会很浪费系统资源。

### accept_mutex_delay

``` shell
Syntax: accept_mutex_delay time;
Default: accept_mutex_delay 500ms;
Context: events;
```

如果accept_mutex 是开启的，同时其他的工作进程正在接受新的连接，定义重新接受新的连接的最大时间（maximum time）.

### daemon

``` shell
Syntax: daemon on | off;
Default: daemon on;
Context: main;
```

决定nginx 是否成为一个守护进程。通常用在开发状态。

### debug_connection

``` shell
Syntax: debug_connection address | CIDR | unix;
Default: ---
Context: events
```

对选择的客户端记录日志

### env

``` shell
Syntax: env variable[=value];
Default: env TZ;
Context: mian;
```

默认的，NGINX移除所有的继承自父进程的环境变量除了TZ.这个指定允许保留一些继承的环境变量。

### error_log

``` shell
Syntax: error_log file [level];
Default: error_log logs/error.log error
Context: main,http,mail,stream,server,location
```

配置日志。

### include file | mask;

``` shell
Syntax: include file | mask;
Default: ---
Context:any
```

包含其他的配置文件

Sampel:

``` shell
include mime.types;
include vhost/*.conf;
```

## load_module

``` shell
Syntax: load_module file;
Default: ---
Context: main;
```

加载动态模块

Example:

``` shell
load_module modules/ngz_mail_module.so;
```

### multi_accept

``` shell
Syntax: multi_accept on | off;
Default: multi_accept off;
Context: event;
```

如果 multi_accept 禁用，一个工作进程会实时接收新的连接，否则，一个工作进程为同时接收所有的新的连接。

### pid

``` shell
Syntax: pid file;
Default: pid logs/nginx.pid;
Context: main
```

定义保存主进程ID的文件

### thread_pool

``` shell
Syntax: thread_pool name threads=number[max_queue=number];
Default:thread_pool default threads=32 max_queue=65536;
Context: main
```

定义非阻塞多线程池名称，线程数量，最大队列数

### use

``` shell
Syntax: use method;
Default:---;
Context: events
```

定义使用的连接方法。NGINX会选择最有效率的一个。

### worker_aio_requests

``` shell
Syntax: worker_aio_requests number;
Default: worker_aio_requests 32;
Context: events
```

当使用非阻塞IO(aio)通过epoll 连接处理方法。为单个进程设置最大异步操作数。

### worker_connections

``` shell
Syntax: worker_connetions number;
Default: worker_connections 512;
Context: events
```

为工作进程设置最大打开连接数

### worker_priority

``` shell
Syntax: worker_priority number;
Default: worker_priority 0;
Context: main
```

定义调度优先级为工作进程。一个负数意味着更高的优先级。允许的范围为 -20 至 20

### worker_processes

``` shell
Syntax:worker_processes number | auto;
Default: ---;
worker_processes 1;
Context:main
```

Defines the number of worker processes.

The optimal value depends on many factors including (but not limited to) the number of CPU cores, the number of hard disk drives that store data, and load pattern. When one is in doubt, setting it to the number of available CPU cores would be a good start (the value “auto” will try to autodetect it).

The auto parameter is supported starting from versions 1.3.8 and 1.2.5.

### worker_rlimit_core

``` shell
Syntax:worker_rlimit_core size;
Default:—
Context:main
```

Changes the limit on the largest size of a core file (RLIMIT_CORE) for worker processes. Used to increase the limit without restarting the main process.

### worker_rlimit_nofile

``` shell
Syntax:worker_rlimit_nofile number;
Default:—
Context:main
```

Changes the limit on the maximum number of open files (RLIMIT_NOFILE) for worker processes. Used to increase the limit without restarting the main process.

### worker_shutdown_timeout

``` shell
Syntax:worker_shutdown_timeout time;
Default:—
Context:main
```

This directive appeared in version 1.11.11.

Configures a timeout for a graceful shutdown of worker processes. When the time expires, nginx will try to close all the connections currently open to facilitate shutdown.

### worker_directory

``` shell
Syntax:working_directory directory;
Default:—
Context:main
```

Defines the current working directory for a worker process. It is primarily used when writing a core-file, in which case a worker process should have write permission for the specified directory.
