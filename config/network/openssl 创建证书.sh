#!/bin/bash 

sudo yum install -y openssl

#1、创建密钥

#使用openssl工具生成一个RSA私钥

sudo openssl genrsa -des3 -out server.key 2048

#注意：生成私钥，需要提供一个至少4位，最多1023位的密码。
sudo openssl genrsa -des3 -out server.key 2048

#2、生成CSR（证书签名请求）

openssl req -new -key server.key -out server.csr

#说明：需要依次输入国家，地区，城市，组织，组织单位，Common Name和Email。其中Common Name，可以写自己的名字或者域名，
#如果要支持https，Common Name应该与域名保持一致，否则会引起浏览器警告。可以将证书发送给证书颁发机构（CA），CA验证过请求者的身份之后，会出具签名证书，需要花钱。另外，如果只是内部或者测试需求，也可以使用OpenSSL实现自签名。
sudo openssl req -new -key server.key -out server.csr


# 3、删除密钥中的密码

sudo openssl rsa -in server.key -out server.key

#说明：如果不删除密码，在应用加载的时候会出现输入密码进行验证的情况，不方便自动化部署。

# 4、生成自签名证书

# 内部或者测试使用，只要忽略证书提醒就可以了。

sudo openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt


#5、生成pem格式的公钥

#有些服务，需要有pem格式的证书才能正常加载，可以用下面的命令：

sudo openssl x509 -in server.crt -out server.pem -outform PEM