# [Connection Processing methods](http://nginx.org/en/docs/events.html)

nginx supports a variety of connection processing methods.

nginx 支持一系列的连接处理方法。特定方法的可用性依赖于使用的平台。在这些平台上如果存在几个支持的方法，nginx通常会自动选择最有效的方法。然而，如果需要，可以通过 **use** 指令选择 连接处理方法。

**支持的连接处理方法:**

* select
  — standard method. The supporting module is built automatically on platforms that lack more efficient methods. The --with-select_module and --without-select_module configuration parameters can be used to forcibly enable or disable the build of this module.

* poll
  — standard method. The supporting module is built automatically on platforms that lack more efficient methods. The --with-poll_module and --without-poll_module configuration parameters can be used to forcibly enable or disable the build of this module.

* kqueue
  — efficient method used on FreeBSD 4.1+, OpenBSD 2.9+, NetBSD 2.0, and macOS.

* epoll
  — efficient method used on Linux 2.6+.

* /dev/poll
  — efficient method used on Solaris 7 11/99+, HP/UX 11.22+ (eventport), IRIX 6.5.15+, and Tru64 UNIX 5.1A+.

* eventport
  — event ports, method used on Solaris 10+ (due to known issues, it is recommended using the /dev/poll method instead).

## use 指令被包含在 **event** 下

``` shell
event {
    use select;
}
```
