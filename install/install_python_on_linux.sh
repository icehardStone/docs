# 步骤一： 安装python依赖

yum install openssl-devel bzip2-devel expat-devel gdbm-devel readline-devel sqlite-devel

# 步骤二：下载安装包

wget https://www.python.org/ftp/python/3.6.5/Python-3.6.5.tgz

# 步骤三：解压缩压缩包

tar -zxvf Python-3.6.5.tgz

# 步骤四：进入文件夹

cd Python-3.6.5

# 步骤五：创建安装目录

mkdir /usr/local/python3

# 步骤六：指明安装目录

./configure -prefix=/usr/local/python3

# 步骤七：编译安装

sudo make && make install