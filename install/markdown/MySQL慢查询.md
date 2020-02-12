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
