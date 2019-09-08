#!/bin/bash
# 流程控制
if [ $(ps -ef | grep -c "ssh") -gt 1 ]; then echo "true";fi

a=10
b=20
if [$a==$b]
then
	echo "a 等于 b"
elif [$a -gt $b]
then
	echo "a 大于 b"
elif [$a -lt $b]
then
	echo "a 小于 b"
else
	echo "我也蒙圈了！"
fi

num1=$[2*3]
num2=$[1+5]
if test $[num1] -eq $[num2]
then
	echo "two nums are equal"
else
	echo "two nums are not equal"
fi
