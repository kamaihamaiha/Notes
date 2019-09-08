#!/bin/bash
#字符串使用
echo '单引号字符串:'
str_single='this is a single string'
echo $str_single
echo -e "\n双引号字符串"
food="辣子鸡"
str="有时候，我特别想吃 \"$food\" !"
echo $str

echo -e "\n拼接字符串"

name="Leslie"
#使用双引号拼接
greeting="hello,"$name""
greeting2="hello,${name}"
echo $greeting $greeting2
#使用单引号拼接
greeting3='hello,'$name''
greeting4='hello,${name}'
echo $greeting3 $greeting4

#获取字符串长度
str='hello'
echo ${#str}

#截取字符串
echo ${str:0:2}

#查找字符串索引
echo `expr index "${str}" o`
