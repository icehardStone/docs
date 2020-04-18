# redhat 上安装sqlsever数据库

## 适合版本 

* sql server 2017
* sql server 2019

## 先决条件

### 适合的redhat 版本

* 7.3
* 7.4
* 7.5
* 7.6

至少2GB内存

## 步骤

1. 下载 Microsoft SQL Server 2017 Red Hat 存储库配置文件：
    > sudo curl -o /etc/yum.repos.d/mssql-server.repo https://packages.microsoft.com/config/rhel/7/mssql-server-2017.repo
2. 运行以下命令以安装 SQL Server：
    > sudo yum install -y mssql-serve.
3. 包安装完成后，运行 mssql-conf setup，按照提示设置 SA 密码并选择版本。
   > sudo /opt/mssql/bin/mssql-conf setup
4. 完成配置后，验证服务是否正在运行：
   > systemctl status mssql-server
5. 开启防火墙
   > sudo firewall-cmd --zone=public --add-port=1433/tcp --permanent
   > sudo firewall-cmd --reload
