#!/bin/bash
fileinfo=($(du ./*))

length=${#fileinfo[@]}

for(i=0;i<$length;i=$(( i+2 )));
do

if [ ${fileinfo[$i]} -le 10 ];then

    mv ${fileinfo[$(( i+1 ))]} /tmp
fi
done