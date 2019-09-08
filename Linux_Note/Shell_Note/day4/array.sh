#!/bin/bash
#数组
echo '定义数组'
arrAs=(arrA0 arrA1 arrA2)
echo ${arrAs[0]}
echo ${arrAs[1]}
echo ${arrAs[2]}

arr_b=(a b c d e f g)
echo ${arr_b[0]}
echo ${arr_b[1]}
echo ${arr_b[2]}
echo ${arr_b[3]}
echo ${arr_b[4]}

arr_c=(
one
two
three
four
)

echo ${arr_c[@]}

arr_d[0]=H
arr_d[1]=e
arr_d[2]=l
arr_d[3]=l
arr_d[4]=o

echo ${arr_d[@]}
