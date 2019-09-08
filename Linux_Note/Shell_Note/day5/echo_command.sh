#!/bin/bash
# echo 命令
# 显示普通字符串
echo "It is a normal string"
echo It is a normal string

# 显示转义字符
echo "\"It is a normal string\""
echo \"It is a normal string\"

echo 请随便输入一行：
read input
echo $input 是你刚才输入的！

echo -e "OK! \n"
echo "end"

echo -e "OK! \c"
echo "end"
