### shell 脚本入门



#### 1.介绍

* Shell 是一个用 C 语言编写的程序，是用户使用 Linux 的桥梁。Shell 既是一个命令语言，又是一种程序设计语言。Shell 是指一种应用程序，这个程序提供了一个界面，用户通过这个界面访问操作系统内核的服务。
* Shell脚本(shell script)，是一种为 shell 编写的脚本程序，里面包含了 shell 命令。

##### Shell 环境

* 文本编辑器 + 脚本解释器
* Linux  的 shell 种类很多，常见的有：Bourne Shell, Bourne Again Shell (/bin/bash), C Shell (/usr/bin/csh), K Shell
* 本教程关注的是 bash，因为易用、免费，同时也是 Linux 默认的 shell。

#### 2.第一个 Shell 脚本

```shell
#!/bin/bash
echo "Hello world!"
```

* #! 是一个约定俗称的标记，它告诉系统这个脚本需要什么解释器来执行，即使用哪一种 shell。
* 文件的扩展名不影响脚本的执行。
* **源脚本**：/helloworld.sh

##### 运行 shell 脚本的 2 种方法：

* 1.作为可执行程序，以 test.sh 为例。test.sh 前加 ./ 是让系统在当前目录下找这个名为 test.sh 的文件。

```sh
#改为可执行的文件
chmod +x test.sh
#执行脚本
./test.sh
```

* 2.作为解释器参数。直接运行解释器，其参数就是 shell 脚本的文件名。


```shell
/bin/sh test.sh
```



#### 3.Shell 变量

* 定义变量时，变量名不加$符号，变量名和等号之间不能有空格。
* **源脚本**: /day2/variable.sh

##### 命名规则：

* 只能用英文字母、数字、下划线。数字不能放在第一位。
* 中间不能有空格。
* 不能使用标点符号。
* 不能使用 bash 关键字。

##### 使用变量

* 使用一个定义过的变量，只要在变量名前加美元符号即可，变量可以被多次赋值。
* 在使用变量的时候推荐给所有的变量加 {}
* readonly 命令可以把变量定义为只读变量。只读变量不可以被删除，不可以被再次赋值。
* unset 命令是删除变量。

##### 变量类型

* **局部变量**：局部变量在脚本或命令中定义，仅在当前shell实例中有效，其他shell启动的程序不能访问局部变量。
* **环境变量**：所有的程序，包括shell启动的程序，都能访问环境变量，有些程序需要环境变量来保证其正常运行。必要的时候shell脚本也可以定义环境变量。
* **Shell 变量**： shell变量是由shell程序设置的特殊变量。shell变量中有一部分是环境变量，有一部分是局部变量，这些变量保证了shell的正常运行



#### 4.Shell 字符串 

* 字符串是 shell 编程中最常用的数据类型，可以用 '' 、""、也可以不用引号。

##### 单引号

```shell
str='这个是单引号字符串'
```

###### 限制

* ''里面的任何自妇产都会原样输出，里面的变量是无效的。
* ''里面不能出现一个单独的 ' ,即使使用转义字符也不行，但是可以成对出现。

##### 双引号

```shell
food="辣子鸡"
str="有时候，我特别想吃 \"$food\"!"
echo str
```

###### 输出结果：

```shell
有时候，我特别想吃 "辣子鸡" !
```

###### 优点：

* 双引号里面可以有变量
* 双引号里面可以出现转义字符

##### 拼接字符串

```shell
name="Leslie"
# 使用双引号拼接
greeting="hello,"$name""
greeting2="hello,${name}"
echo $greeting $greeting2
# 使用单引号拼接
greeting3='hello,'$name''
greeting4='hello,${name}'
echo $greeting3 $greeting4
```

###### 输出结果

```shell
hello,Leslie hello,Leslie
hello,Leslie hello,${name}
```



##### 获取字符串长度

```shell
str='hello'
echo ${#str}
```

###### 输出结果

```shell
5
```

##### 提取字符串

* 从0截取到2，包含0索引，不包含2索引

```
echo ${str:0:2}
```

###### 输出结果

```shell
he
```

##### 查找字符串

* 查找 **o** 的位置

  ```shell
  echo `expr index "${str}" o`
  ```

###### 输出结果

```
5
```

####  5.Shell数组

* bash支持一维数组，不支持多维数组，并且不限制数组的大小

##### 定义数组

* 在 Shell 中，用括号来表示数组，数组元素用“空格”分开。一般形式为：

```
数组名=（值1 值2 值3 ... 值4）
```

* 例如：

```shell
arrary_name=(value0 value1 value2 value3)
```

* 或者：

```shell
arrary_name=(
value0
value1
value2
value3
)
```



* 单独定义数组元素：

```shell
array_name[0]=value0
array_name[1]=value1
```

##### 读取数组

* 格式：

```shell
${数组名[下标]}
```

* 例如：

```shell
value_0=${array_name[0]}
```

* 使用 @ 可以获取数组中所有的元素，例如：

```
echo ${array_name[@]}
```

#### 6.Shell 注释

* 以 “#” 开头的行就是注释，会被解释器忽略。
* sh里没有多行注释，如：

```shell
#-----------------------------------------------------
# 这是一个注释
# author:Kamaihamaiha
# site:https://github.com/kamaihamaiha/Shell_Note.git
# slogan:学的不仅是技术，更是梦想！
#-----------------------------------------------------
```

##### 多行注释

```shell
:<<EOF
第一行注释
第二行注释
第三行注释
...
第N行注释
EOF
```

* EOF也可以使用其他符号：

```shell
:<<'
第一行注释
第二行注释
第三行注释
...
第N行注释
'

:<<!
第一行注释
第二行注释
第三行注释
...
第N行注释
!
```

#### 7.Shell echo  命令 

* 用户字符串的输出

##### 1.显示普通字符

```shell
# 2 种写法是一样的
echo "It is a normal string"
echo It is a normal string
```

##### 2.显示转义字符

```shell
# 2 种写法是等价的
echo "\"It is a normal string\""
echo \"It is a normal string\"
```

* 结果是：

```shell
"It is a normal string"
```

##### 3.显示变量

* read 命令从标准输入中读取一行，并且把输入行的内容赋值给 shell 变量。

```
#!/bin/bash
echo 请随便输入一行：
read input
echo $input 是你刚才输入的！
```

##### 4.显示换行

```shell
#!/bin/bash
echo -e "OK! \n"
echo "end"
```

* 结果：

```shell
OK!

end
```

##### 5.显示不换行

```shell
#!/bin/bash
echo 
```

##### 6.显示结果定向至文件

```shell
echo Hello good night! > hello
```

##### 7.原样输出字符串，使用单引号

```shell
echo '$name'
```

* 结果：

```shell
$name
```

##### 8.显示命令执行结果

* 注意是反引号

```
echo `date`
```

#### 8. test命令

* test 命令用于检查某个条件是否成立，包含 数值、字符、文件三个方面的测试。

##### 数值测试

```shell
-eq		== 则 true
-ne		!= 则 true
-gt		>  则 true
-ge		>  则 true
-lt		<  则 true
-le		<= 则 true
```

###### 演示：

```shell
num1=100
num2=100
if test $[num1] -eq $[num2]
then
	echo 'they are equal'
else
	echo 'they aren't equal'
fi
```

###### 输出结果：

```
they are equal
```

###### 其中 [] 执行的是基本算数运算，如：

````shell
#!/bin/bash
a=1
b=100
#必须用双引号：""
echo "a + b = $[a+b]"
````

##### 字符串测试

```shell
=		 等于为		         true
!=		 不等于为               true
-z 字符串 字符串长度为0则为       true
-n 字符串 字符串长度≠0则为        true		
```

###### 实例演示：

```shell
str1=china
str2=China
if test $str1 = $str2
then
	echo '2个字符串相等'
else
	echo '2个字符串不相等'
fi
```

###### 结果：

```
2个字符串不相等
```

##### 文件测试

```
-e 文件名		文件存在则 				 true
-r 文件名		存在且可读则	   		    true
-w 文件名		存在且可写则     		    true
-x 文件名		存在且可执行则    		   true
-s 文件名		存在且至少有一个字符则		true
-d 文件名		存在且为目录则				true
-f 文件名		存在且为普通文件则		   true
-c 文件名		存在且为字符型特殊文件则	 true
-b 文件名		存在且为块特殊文件则		  true
```

实例演示：

```shell
cd /bin
if test -e ./bash
then
	echo './bash文件存在'
else
	echo './bash文件存在'
fi
```

结果：

```
./bash文件存在
```

#### 9.流程控制

##### if else

###### if

* if 语句语法格式

```shell
if condition
then
	command1
	command2
	...
	commandN
fi
```

如：

```shell
if [ $(ps -ef | grep -c "ssh") -gt 1]; then echo "true"; fi
```

###### if else

* 语法格式

```shell
if condition
then
	command1
	command2
	...
	commandN
else
	command
fi
```

###### if else-if else

* 语法格式

```shell
if condition1
then
	command1
elif condition2
then
	command2
else
	command3
fi
```

* 如：

```shell
#判断2个变量是否相等
a=10
b=20
if [ $a == $b]
then
	echo "a 等于 b"
elif [ $a -gt $b]
then
	echo "a 大于 b"
elif [ $a -lt $b]
then
	echo "a 小于 b"
else
	echo "我也蒙圈了！"
fi
```

* 输出结果「实际执行有错误」：

```
a 小于 b
```

* if else 语句常和 test 命令结合使用，如：

```shell
num1=$[2*3]
num2=$[1+5]
if test $[num1] -eq $[num2]
then
	echo "two nums are equal"
else
	echo "two nums are not equal"
fi
```

* 输出结果：

```shell
two nums are equal
```

