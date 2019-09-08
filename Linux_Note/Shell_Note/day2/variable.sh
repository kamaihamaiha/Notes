#!/bin/bash
#shell变量
echo "shell变量"
echo ""
echo "变量名和等号之间不能有空格，命名遵循如下规则："
echo "英文、数字、下划线，不能以数字开头。"
echo "不能使用标点符号。"
echo "中间不能有空格。"
echo "不能使用 bash 里的关键字(可用help命令查看保留关键字)。"
echo "有效的 Shell 变量名事例如下："
echo -e "\nRUNOOB\nLD_LIBRARY_PATH\n_var\nvar2\n"

echo -e "给变量赋值...\n"
name="Leslie"
echo $name

task="I am studying shell script!"
echo "这个周的任务是：${task}"
echo "只读变量"
target="我一定要赚到很多钱！"
readonly target
echo "删除变量"
echo "使用 unset 命令可以删除"
unset target
unset task
echo $task
#变量被删除后不能再次使用，不能删除只读变量。

