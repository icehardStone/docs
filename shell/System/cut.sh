# [msqql@192 shell]$ cut --help
# Usage: cut OPTION... [FILE]...
# Print selected parts of lines from each FILE to standard output.

# Mandatory arguments to long options are mandatory for short options too.
#   -b, --bytes=LIST        select only these bytes
#   -c, --characters=LIST   select only these characters
#   -d, --delimiter=DELIM   use DELIM instead of TAB for field delimiter
#   -f, --fields=LIST       select only these fields;  also print any line
#                             that contains no delimiter character, unless
#                             the -s option is specified
#   -n                      with -b: don't split multibyte characters
#       --complement        complement the set of selected bytes, characters
#                             or fields
#   -s, --only-delimited    do not print lines not containing delimiters
#       --output-delimiter=STRING  use STRING as the output delimiter
#                             the default is to use the input delimiter
#       --help     display this help and exit
#       --version  output version information and exit

# Use one, and only one of -b, -c or -f.  Each LIST is made up of one
# range, or many ranges separated by commas.  Selected input is written
# in the same order that it is read, and is written exactly once.
# Each range is one of:

#   N     N'th byte, character or field, counted from 1
#   N-    from N'th byte, character or field, to end of line
#   N-M   from N'th to M'th (included) byte, character or field
#   -M    from first to M'th (included) byte, character or field

# With no FILE, or when FILE is -, read standard input.

# GNU coreutils online help: <http://www.gnu.org/software/coreutils/>
# For complete documentation, run: info coreutils 'cut invocation'


# -d ：指定字段的分隔符，默认的字段分隔符为“TAB”；


# 原始数据：  文件名称 cut.txt

# from1;to1;
# from2;to2;
# from3:to3;
# from4;to4;
# from5;to5;

# 分隔符为 ; 
cut -d ";"   -f  1      ./cut.txt

# 输出：

# from1
# from2
# from3
# from4
# from5

cut -d ";"   -f1,2      ./cut.txt


# --out-delimiter=<字段分隔符>：指定输出内容是的字段分割符；

cut -d ";" -f1,2     ./cut.txt   --out-delimiter=" "  