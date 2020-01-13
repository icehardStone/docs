# MySQL Configuration  https://dev.mysql.com/doc/refman/5.6/en/ipv6-local-connections.html
[mysqlid]
bind_address = * 

#It accepts only IPv6 connections for that single address and rejects IPv4 connections.

#As an administrator, connect to the server and create an account for a local user who will connect from the ::1 local IPv6 host address:
mysql> CREATE USER 'ipv6user'@'::1' IDENTIFIED BY 'ipv6pass';

#to connect to the server using the new account:
shell> mysql -h ::1 -u ipv6user -pipv6pass


#show connection information:
mysql> STATUS