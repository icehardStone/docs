#/bin/bash

ftpserver=127.0.0.1
ftpuser=vsftpd                      #用户名为 vsftpd
ftppassword=1                       #密码为 1
filepath=/home/temp/a.txt           #文件名称为a.txt 目录为 /home/temp
remotepath=/home/temp/pub


upload $ftpserver $ftpuser $ftppassword $filepath $remotepath               #上传示例文件

# $1 服务器地址
# $2 用户名
# $3 密码
# $4 本地地址
# $5 远程文件地址
function  upload () {
    ftp -n $1 <<End-Of-Session
    user $2 $3
    ls
    put $4 $5
    ls
    End-Of-Session
}

# window 下ftp 客户端帮助信息，

# ftp --help

# Transfers files to and from a computer running an FTP server service
# (sometimes called a daemon). Ftp can be used interactively.

# FTP [-v] [-d] [-i] [-n] [-g] [-s:filename] [-a] [-A] [-x:sendbuffer] [-r:recvbuffer] [-b:asyncbuffers] [-w:windowsize] [host]

#   -v              Suppresses display of remote server responses.
#   -n              Suppresses auto-login upon initial connection.
#   -i              Turns off interactive prompting during multiple file
#                   transfers.
#   -d              Enables debugging.
#   -g              Disables filename globbing (see GLOB command).
#   -s:filename     Specifies a text file containing FTP commands; the
#                   commands will automatically run after FTP starts.
#   -a              Use any local interface when binding data connection.
#   -A              login as anonymous.
#   -x:send sockbuf Overrides the default SO_SNDBUF size of 8192.
#   -r:recv sockbuf Overrides the default SO_RCVBUF size of 8192.
#   -b:async count  Overrides the default async count of 3
#   -w:windowsize   Overrides the default transfer buffer size of 65535.
#   host            Specifies the host name or IP address of the remote
#                   host to connect to.

# Notes:
#   - mget and mput commands take y/n/q for yes/no/quit.
#   - Use Control-C to abort commands.

# ftp> help
# Commands may be abbreviated.  Commands are:

# !               delete          literal         prompt          send
# ?               debug           ls              put             status
# append          dir             mdelete         pwd             trace
# ascii           disconnect      mdir            quit            type
# bell            get             mget            quote           user
# binary          glob            mkdir           recv            verbose
# bye             hash            mls             remotehelp
# cd              help            mput            rename
# close           lcd             open            rmdir
# ftp>