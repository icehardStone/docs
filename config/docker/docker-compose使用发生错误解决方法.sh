# 错误  ERROR: Couldn't connect to Docker daemon at http+docker://localunixsocket - is it running?

sudo groupadd docker   					# 如果没有docker group,就添加一个
sudo gpasswd -a ${USER} docker			# 将用户加入该 group 内。然后退出并重新登录就生效啦。

sudo service docker restart 			# 重启docker服务

sudo newgrp - docker					#  切换前档会话到新group或者重启X会话
