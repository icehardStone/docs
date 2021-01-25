# truncate 和 delete, drop 的区别

truncate 和delete 都用来删除所有的表中数据，不同之处在于，truncate 是ddl 语句而 delete 是 dml语句，delete 删除数据时候会产生大量的回滚日志，而trancate只会产生最少量的日志记录

truncate 操作相当于 drop + re create  table 操作
drop 直接删除数据和表结构，而truncate 和 delete 只删除表数据

truncate 之后插入数据从0开始增加，而delete 之后，会从当前删除的最后一条记录的行号增加

``` sql
/* 删除一个大数据量表的操作 */
sql> copy same data to other table              /* 复制不需要删除的数据到其他表*/
sql> truncate this table                        /* truncate 该表
sql> copy from other table to this table        /* 从其他表复制数据至该表
sql> that's all
```
