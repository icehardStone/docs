# 一, MySQL Tools

## 1.1, mysql_config_editor

mysql_config_editor出现在mysql5.6.6以后的版本，可以给指定的连接和密码生成一个加密文件.mylogin.cnf，默认位于当前用户家目录下。通过该文件可以使用
mysql、mysqladmin等直接登录，避免明文密码出现在脚本中。

| 参数  |  说明   |
| :---- | :------ |
| set   |   Sets user name/password/host name/socket/port for a given login path (section).	|
| print |  打印出所有的选项对于特定的login path
| reset |  重置login path	|
| help  |  帮助	|

``` shell 

sudo mysql_config_editor set --login-path=loginPathName --host=IP --user=userName --password

```

使用：

> mysql --login-path=loginPathName

## mysqld

``` shelll
mysqld --validate-config    #校验配置文件是否合法
```

## mysql SQL Mode

MySQL服务器能够在不同的SQL模式下操作，能够对于不同的客户端应用不同的模式，这依赖于系统变量sql_model的值，数据库管理员（DBA）能够设置全局SQL mode 去匹配服务器操作要求，同时，每个应用对于自己的要求还可以设置会话SQL mode.

modes 影响MySQL支持的SQL语法和MySQL数据验证检查性能。这使得在不同的环境使用mysql和其他数据库服务器一起使用更为简单。

* Setting the SQL Mode
* The Most Important SQL Modes
* Full List of SQL Modes
* Combination SQL Modes
* Strict SQL Mode
* Comparison of the IGNORE Keyword and Strict SQL Mode

当使用InnoDB 表，应同时考虑innodb_strict_mode 系统变量，它能够增加额外的错误检查，对于InnoDB表。

Setting the SQL Mode

默认的SQLmode 在MySQL 8.0包含这些模式：ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FORDIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION,

在服务器开启时候设置SQL mode 使用 --sql-mode="mode" 选项在命令行中，或者在配置文件中使用sql-mode="mode"

在系统运行时候改变SQL mode ，设置全局或者会话sql——mode使用一下语法：

set global sql_mode = "mode";
set session sql_mode = "modes";

### The Most Important SQL Modes

最重要的sql_mode 值可能是一下这些:

* ANSI
* STRICT_TRANS_TABLES
* TRANDITIONAL

## MySQL Server Time Zone 支持

这个小结描述了系统时区维护设置在MySQL中，怎样去加载系统表去命名时间支持，怎样去停留当前时区改变，和怎样启用leap_second support.

* 时区变量
* 填充时区表
* 跟踪时区变化
* 时间闰秒变化

### Time Zone Variables

MySQL Server maintains serveral time zone settings:

* 系统时区。当服务开启，系统自动尝试去决定主机时区，使用它来设置system_time_zone 系统变量值，该值不会在此后改变。
* 明确制定的系统时区变量值当MySQL 服务器开启时，设置TZ环境变量值，在你开启mysqld开始，如果你开启服务器使用mysqld_safe,它的--timezone选项提供另外的方式去设置系统时区。
