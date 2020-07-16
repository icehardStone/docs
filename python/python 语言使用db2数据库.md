# Python 连接db2 数据库

<!-- 包ibm_db -->
## 使用包dbm_db

``` shell
pip install -i https://mirrors.ustc.edu.cn/pypi/web/simple ibm_db
```

<!-- 离线安装 -->

## 离线安装

需要包

* [ibm_data_server_driver_package_linuxx64_v11.5.tar.gz](./package/ibm_data_server_driver_package_linuxx64_v11.5.tar.gz)
* [ibm_db-3.0.2.tar.gz](./package/ibm_db-3.0.2.tar.gz)
* [linuxx64_odbc_cli.tar.gz](./package/linuxx64_odbc_cli.tar.gz)

### 安装步骤

**Step 1**

解压 ibm_data_server_driver_package_linuxx64_v11.5.tar.gz

``` shell
tar -xvf ./ibm_data_server_driver_package_linuxx64_v11.5.tar.gz

cd ./dsdriver

./installDSDriver  #运行安装客户端
```

**Step 2**

解压 ibm_db-3.0.2.tar.gz

``` shell
tar -xvf ./ibm_db-3.0.2.tar.gz
tar -xvf ./linuxx64_odbc_cli.tar.gz
mv ./clidriver  ./ibm_db-3.0.2
cd ./ibm_db-3.0.2
python setup.py install
```

## 曾经发生过的问题

* 运行安装客户端缺失 unzip 命令

``` shell
apt-get install -y unzip
yum install -y unzip
```

* 缺失 gcc  

``` shell
apt-get install -y gcc  
yum install -y gcc  
```
