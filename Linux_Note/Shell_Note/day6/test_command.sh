#!/bin/bash
#test命令
num1=123
num2=123
if test $[num1] -eq $[num2]
then
    echo '2个数相等'
else
    echo '2个数不相等'
fi

a=1
b=100
c=$[a+b]
echo "a + b = $c"
echo "a + b = $[a+b]"

#字符串测试
str1=china
str2=China
if test $str1 = $str2
then
    echo '2个字符串相等'
else
    echo '2个字符串不相等'
fi

#文件测试
cd /bin
if test -e ./bash
then
    echo './bash文件存在'
else
    echo './bash文件存在'
fi
