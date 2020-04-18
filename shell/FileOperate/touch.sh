#!/bin/bash 

# 创建新文件或者修改文件属性

用法：touch [选项]... 文件...
Update the access and modification times of each FILE to the current time.
A FILE argument that does not exist is created empty, unless -c or -h         is supplied.
A FILE argument string of - is handled specially and causes touch to change the times of the file associated with standard output.

Mandatory arguments to long options are mandatory for short options too.
  -a                                        只更改访问时间
  -c, --no-create                   不创建任何文件
  -d, --date=字符串             使用指定字符串表示时间而非当前时间
  -f                                        (忽略)
  -h, --no-dereference          会影响符号链接本身，而非符号链接所指示的目的地
                                            (当系统支持更改符号链接的所有者时，此选项才有用)
  -m                                    只更改修改时间
  -r, --reference=FILE          use this file's times instead of current time
  -t STAMP                          use [[CC]YY]MMDDhhmm[.ss] instead of current time
      --time=WORD              change the specified time:
                                            WORD is access, atime, or use: equivalent to -a
                                            WORD is modify or mtime: equivalent to -m
      --help                            显示此帮助信息并退出
      --version                     显示版本信息并退出

请注意，-d 和-t 选项可接受不同的时间/日期格式。

GNU coreutils online help: <http://www.gnu.org/software/coreutils/>
请向<http://translationproject.org/team/zh_CN.html> 报告touch 的翻译错误
要获取完整文档，请运行：info coreutils 'touch invocation'

# stat 命令，查看文件或者文件夹属性属性

 yum install python-devel