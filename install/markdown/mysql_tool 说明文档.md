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

## 1.2, mysqlbinlog



