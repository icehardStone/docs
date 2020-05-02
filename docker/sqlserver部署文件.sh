#   Object:  sqlserver部署文件.sh                                      File Date: 2020 /05 /02  14:06 :01    
#   Version:  
#   Worker: icehardstone                                                  Eamil: 1124246349@qq.com  


# sudo docker run --name my_sqlserve -v /home/msqql/temp/mssql/data:/var/opt/mssql/data/ -v /home/msqql/temp/mssql/log:/var/opt/mssql/log -p 1433:1433 -e SA_PASSWORD=sa123456poi -e ACCEPT_EULA=y --privileged=true         -d mcr.microsoft.com/mssql/server:latest

sudo docker run  --name my_sqlserve  -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=SA123456poi" -u 0:0 -p 1433:1433 -v /home/msqql/temp/mssql/data:/var/opt/mssql/data -v /home/msqql/temp/mssql/log:/var/opt/mssql/log    -d mcr.microsoft.com/mssql/server:latest


# docker run -e 'ACCEPT_EULA=Y' -e 'MSSQL_SA_PASSWORD=<YourStrong!Passw0rd>' -p 1433:1433 -v <host directory>/data:/var/opt/mssql/data -v <host directory>/log:/var/opt/mssql/log -v <host directory>/secrets:/var/opt/mssql/secrets -d mcr.microsoft.com/mssql/server:2019-GA-ubuntu-16.04