<!-- {
	"registry-mirrors": [
		"http://hub-mirror.c.163.com"
	],
	"hosts": [
		"tcp://0.0.0.0:2375",
		"unix:///var/run/docker.sock"
	]
} -->

<!--
windows 下设置国内镜像源
打开终端执行命令：docker-machine ssh

修改配置文件：sudo vi /var/lib/boot2docker/profile

在 --label provider=virtualbox 的下一行添加： --registry-mirror http://hub-mirror.c.163.com

重启docker docker-machine.exe restart

Docker中国区官方镜像：
https://registry.docker-cn.com

网易：
http://hub-mirror.c.163.com

中国科技大学：
https://docker.mirrors.ustc.edu.cn

阿里云容器 服务  需要登录获取账号专属镜像地址
https://cr.console.aliyun.com/ -->
