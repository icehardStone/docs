#!/bin/bash
basepath=/home/root/ihdis
if [ -d $basepath/back ]
then
  echo "directory: $basepath/back is existed!" >>$basepath/back/temp.log
else
  mkdir -p $basepath/back
  echo "create directory $basepath/back" >>$basepath/back/temp.log
fi

datetime=`date "+%Y%m%d%H%M%S"`
filepath="$basepath/back/$datetime.sql"
echo  "export data filepath: $filepath" >>$basepath/back/temp.log

echo "exporting............."  >>$basepath/back/temp.log
echo "export database ihdis to $filepath"  >>$basepath/back/temp.log
cd $basepath/produse
sudo docker-compose exec -T mysql mysqldump -uroot -phhmed\#123 --default-character-set=utf8   --skip-triggers ihdis > $filepath
echo "exported.............."  >>$basepath/back/temp.log


echo "start upload file to ftp server................" >>$basepath/back/temp.log
# ftp服务器目录
ServerIP=192.168.1.15
User=administrator
Password=Bf\#whsey15

ftp -n $ServerIP <<End-Of-Session
user $User $Password
cd XT
ls
put $filepath  /XT/$datetime.sql
ls
bye 
End-Of-Session

echo "upload successfully.........................." >>$basepath/back/temp.log


echo "start to delete file.............................."
logs=$(find   $basepath/back/  -ctime +3  |sed 's#.*/##')  

for log in $logs
do
echo "delete file $basepath/back/$log" >>  $basepath/back/temp.log
rm -rf $basepath/back/$log
ftp -n $ServerIP <<End-Of-Session
user $User $Password
ls
delete /XT/$log
ls
bye
End-Of-Session
done
