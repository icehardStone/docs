# [Controlling nginx](http://nginx.org/en/docs/control.html)

* Changing Configuration 更改配置文件
* Rotating Log-files 旋转日志文件
* Upgrading Executeable on the Fly 动态升级可执行文件

nginx 能够通过signals控制。默认情况下，主进程的ID被写入文件 **/usr/local/nginx/logs/nginx.pid** 中。

## 主进程支持以下signals

* TERM,INT   快速关闭
* QUIT       graceful shutdown
* HUP        更改配置文件。通过新的配置文件开启一个新的工作进程，关闭旧的工作进程。
* USR1       重新打开日志文件
* USR2       更新可执行文件
* WINCH      graceful shutdown of worker processes

**重新读取配置文件流程：**

检查语法（checks the syntax validity） ->   尝试使用新的配置文件  ->  打开日志文件和新的监听Socket(to open log files and new listen sockets)  ->  如果失败，回滚，同时继续工作在旧的配置文件下  -> 如果成功 开启一个新的工作进程，同时给旧的工作进程发送关闭的信号。 -> 旧的工作进程服务完所有的客户端后关闭。

**阐述一下例子：**

``` shell
ps axw -o pid ppid,user,%cpu,vsz,wchan,command | egrep '(nginx|PID)'  
```

**Rotating Log-files**

In order to rotate log files, they need to be renamed first. After that USR1 signal should be sent to the master process. The master process will then re-open all currently open log files and assign them an unprivileged user under which the worker processes are running, as an owner. After successful re-opening, the master process closes all open files and sends the message to worker process to ask them to re-open files. Worker processes also open new files and close old files right away. As a result, old files are almost immediately available for post processing, such as compression.