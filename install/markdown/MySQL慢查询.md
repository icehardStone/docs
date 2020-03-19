# The Slow Query Log
慢查询日志由执行花费超过最长查询时间变量设置的秒数的SQL语句组成，并且最少要求[min_examined_row_limit]('') 行去检验。慢查询日志能够被使用去发现花费了长时间执行的语句，并把它们最为优化的候选对象。然而，记录一个长时间的查询日志同时也会成为一个消耗时间的任务。为了简便，你可以使用[mysqldumpslow]('')命令去处理一个慢查询日志文件同时分析发的组成。

## mysqldumpslow 执行出现错误

``` shell
Can't determine basedir from 'my_print_defaults mysqld' output: --skip-host-cache
```

原因是安装mysql时没有设置basedir 也就是mysql的安装路径。 只要在mysqldumslow后加上路径即可

``` shell
mysqldumpslow -t 10 ./var/log/mysql_slow.log
```

### Slow Query Log Parameters

最小的和默认的[long_query_time]('')值是0和10，分别的，这个值能够被定义为毫秒。

默认的，管理型的语句不会别记录，如果想启用使用参数[log_slow_admin_statements]('')参数和[log_queries_not_using_indexs]('')参数。

默认的，慢查询日志是关 闭的，开启使用[slow_query_log]('')参数，定义日志文件名称为[slow_query_log_file]('')参数。

如果你没有定义日志文件名称，默认的日志文件名称host_name_slow.log.该文件会被创建在data directory除非一个绝对路径被给予。