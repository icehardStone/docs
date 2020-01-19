# 第四章 MySQL Programs

此小结提供关于MySQL 命令行工具程序的简短的描述，同时也讨论了运行这些程序选项的特定语法，大部分程序的选项是对于他们自己操作特定的，但是也有一些相似的语法，总的来说，该章提供类更多的详细描述关于独立程序，包括他们呢定义的选项。

对于MySQL Server mysqld 是进行大部分工作的主进程。服务器被几个相关的帮助你停止和启动服务的脚本所伴随。

* mysqld
* mysqld_safe
  * 服务开启脚本，尝试开启mysqld
* mysql.server
  * 服务开启脚本程序。
* mysqld_multi
  * 服务器开启脚本，这个脚本程序可以开启或者关闭几个已经安装在该系统上的多个服务器

## MySQL client programs that connect to the MySQL Server

* mysql
  * 动态的交互式输入SQL语句和执行。
* mysqladmin
  * 执行管理性操作的客户端。例如，创建删除数据库，重载表，从新打开日志，刷新表
* mysqlcheck
  * 减产，修护，分析，优化表的客户端。
* mysqldump
  * 导出数据库数据为SQL,text,xml文件
* mysqlimport
  * 从text,xml,Sql 中倒入数据库
* mysqlpump
  * A client that dumps a MySQL database into a file as SQL.
* mysqlshow
  * 展示数据库，表，列，索引信息的客户端

## MySQL administrative and Utility Programs

* mysqlbinlog
  * 读取二进制日志的工具
* innochecksum
  * 一个离线InnoDB文件校验工具
* myisam_ftdump
  * 展示在MyISAM数据表中的全文索引信息
* myisamchk
  * 描述，减产，优化，修复MyISAM数据表
* mysql_config_editor
  * 存储登陆验证信息在login path 中，不用输用户密码信息

## MySQL program-development utilities

* mysql_config
  * 当编译MySQL程序产生需要的选项值。
* my_print_defaults

## 调用MySQL Program

``` shell
mysql --user=root test  #test 即为database
mysqladmin extended-status variableds
mysqlshow --help
mysqldump -u root personnel #personnel 即为数据库名称

```

## 指定程序选项

选项是为了被处理的，因此，如果一个选项被多次定义，最后一个优先  
例如:  
下面的命令中mysql会连接到localhost  
mysql -h example.com -h localhost  

如果两个或者多个选项之间冲突，最后一个优先  
例如:  
下面的命令中会忽略列名  
mysql --column-names --skip-column-names  

## Command Options for Connecting to the Server

* Command Options for Connection Establishment
* Command Options for Encrypted Connection
* COmmand Options for Connection Compression

### Establishment

此小结描述了怎样控制客户端程序与服务器端程序建立连接

| 选项名称 | 描述 |
| :------- | :------- |
| --default-auth | 使用的校验插件 |
| --host | 主机地址 |
| --password | 密码 |
| --pipe | 命名管道（windows）|
| --plugin-dir | 插件安装目录 |
| --port | 端口 |
| --protocol | 连接协议 |
| --shared-memory-base-name | 共享内存名称 |
| --socket | Unix Socket 文件或者windows 命名管道 |
| --user | 用户 |

#### --default-auth=plugin  

对于客户端使用何种验证插件的暗示,MySQL 8.0 提供了如下这些身份验证插件

1. mysql_native_password
2. sha256_password (实现类SHA-256验证)，caching_sha2_password (实现类SHA-256,但是为了更好的性能和额外增加的更广泛的应用使用了服务端缓存)
3. mysql_clear_password (允许客户端用明文的方式发送密码，不经过哈希运算或者加密)
4. PAM Pluggable Authentication  

   注意：PAM luggable Authentication 是一个扩展被包含在MySQL 企业版本呢中，是一个商业产品，收费。PAM Pluggable 验证已经在Linux 和macOS 已经被测试了。  

   | Plugin or File | Plugin or File Name |
   | :------------- | :------------------ |
   | Server-side plugin | authentication_pam |
   | Client-side plugin | mysql_clear_password |
   | Library file | authentication_pam.so |

5. 使用原生windows service 进行客户端验证

## mysql_secure_installation - Imporove MySQL Installation Security

该程序通过以下方式能够帮你提升MySQL安装的安全

* 你可以为root账号设置密码
* 你可以从本地主机外移除root账号的访问
* 你可以移除匿名用户账号
* 删除test数据库
  
正常的使用是连接MySQL 服务器，调用mysql_secure_installation 不用任何参数。

``` shell
mysql > mysql_secure_installation
```

| 选项名称 | 作用 |
| :------- | :--------- |
| --default-extra-file  | 除了正常的选项文件之外，还有读取指定的选项文件。|
| --defaults-file  | 只读取指定的选项文件 |
| --deafult-group-suffix | 选项组后缀值 |
| --help | |
| --host | mysql 服务器地址 |
| --no-default | 不读取选项文件
| --password | 密码 |
| --port | 端口|
| --print-default|打印默认选项|
|protocol|链接使用的协议|
|--socket|Unix socket 文件 或者 windows 命名管道|
|--ssl-ca |包含可信的SSL 证书验证列表的文件 |
|--ssl-capath |包含可信的SSL证书验证列表文件的目录 |
| --ssl-copher |Permissible ciphers for connection encryption |
| ssl-key |包含X.509密钥的文件 |
| --user |用户 |
| --use-default |无交互性用户执行 |
| --tls-version |允许TSL协议加密连接 |

## Client Programs

## mysql - The MySQL Command-Line Client

mysql 是一个简单的提供编辑和输入的SQL脚本解释器，支持交互式与非交互式的使用。

``` shell
mysql --user=username --password=password --host=ipaddress

## 导入SQL 脚本

mysql db_name < script.sql
```

### mysql client tips

此小结

### mysqladmin - Client for Administering a MySQL Server

mysqladmin 是一个执行管理性操作的客户端，你可以使用它同检查服务端配置和状态，创建和删除数据库等等。

调用mysqladmin示例:  

``` shell
shell > mysqladmin options command command-arg
```

mysqladmin 支持以下的命令

| 命令名称 | 作用 |
| :------- | :--------- |
| create db_name | 创建数据库 |
| debug | 向错误日志写debug信息 |
| drop db_name | 删除数据库 |
| extended-status | 展示服务器状态和值 |
| flush-hosts | 刷新所有的主机缓存信息 |
| flush-logs | 刷新日志 |
| flush-privileges | 刷新权限 |
| flush-status | 刷新状态变量 |
| flush-threads | 刷新线程缓存 |
| kill id,id,... | 杀死服务器线程 |
| password new_password | 新密码 |
| ping | 检查服务器是否网络正常 |
| processlist | 服务器工作线程列表 |
| reload | reload the grant tables |
| refresh | 刷新所有的表同时关闭和打开日志文件 |
| shutdown | 关闭服务器 |
| start-slave | Start replication on slave server |
| status | 展示短服务器状态消息 |
| stop-slave | Stop replication on a slave server |
| variables | 展示服务器系统变量和值 |
| version | 版本 |

## mysqlcheck - A Table Maintenance Program

mysqlcheck 执行表维护：检查，修复，优化，分析表。当每个表在处理过程中被锁住而不能访问时候，虽然对于检查操作来说，表仅仅是被Read lock 锁住。 表维护操作可能花费较长时间。

mysqlcheck 必须运行在mysql server运行过程中，这意味着你不能停止服务器去执行表维护操作。

## mysqldump - A Database Backup Program

mysqldump 一个数据库备份程序。

mysqldump 至少要求Select 权限为导出数据库，SHow View 去导出视图，Trigger 去导出触发器，并且如果--single-transaction选项没使用还需要Lock Tables。
