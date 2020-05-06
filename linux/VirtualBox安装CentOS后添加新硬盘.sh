# irtualBox安装CentOS后添加新硬盘

#  在virtualbox中装好CentOS后，发现空间太小，怎样才能增加硬盘容量？那就是再建一个硬盘： 
# 1. 添加新硬盘 
#      设置 -> Storage -> SATA控制器->右击，选择“添加虚拟硬盘” 
#      然后，根据需求创建合适的硬盘 
# 2. 重启虚拟机 
#      查看现有的磁盘空间 
        sudo fdisk -l 
#      可看到新加的虚拟硬盘，一般名为：Disk /dev/sdb 
# 3. 给新加的硬盘 
        fdisk /dev/sdb 
#      键入m,可看到帮助信息 
#         command (m for help):m          
#      增加新分区 
#         command (m for help):n 
#      选择基本分区，输入：p 
#      建一个分区 
#         Partition number(1-4):1 
#      回车 
#         First cylinder (1-15908,default 1):Enter 
#      写入并退出 
#         command (m for help):w 
# 4. 格式化磁盘分区 
#      用ext4格式对/dev/sdb1进入格式化 
        sudo mkfs.ext4 /dev/sdb1 
# 5. 挂载分区 
#      创建新的挂载点 
        sudo mkdir /work 
#      将新磁盘分区挂载到/work目录下 
        sudo mount -t ext4 /dev/sdb1 /work 
#      查看挂载 
        df -h 
#      可以看到新加的硬盘：/dev/sdb1 
# 6. 开机自动挂载 
#      修改文件 
            sudo vim /etc/fstab 
#      在最后一行加入： 
            /dev/sdb1 /work ext4 errors=remount-ro 0 1 
#      完成! 