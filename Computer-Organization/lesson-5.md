### 05 | 计算机指令：让我们试试用纸带编程

早期计算机的程序是用打孔卡【Punched Card】实现的。

#### 在软硬件接口中，CPU 帮我们做了什么？

- 从 **硬件** 角度，CPU 是一个超大规模的集成电路，通过电路实现了运算。
- 从 **软件** 角度，CPU 是一个执行各种 **计算机指令**(Instruction Code) 的逻辑机器。计算机指令好比一门 CPU 能懂的语言，也叫作 **机器语言**(Machine Language)。

##### 计算机指令集（Instruction Set）

对于 CPU 来说，就是他的语言。一个程序可以运行在相同指令集的不同电脑上，但是不能运行在不同指令集的电脑上。

##### 存储程序型计算机（Stored-program Computer）

这种计算机把程序指令存到存储器中。

早期，有一种计算机，是 “插线板计算机”（Plugboard Computer）。工程师用不同的电线连接插口和插座，完成计算任务。这样操作效率低。

---

#### 从编译到汇编，代码怎么变成机器码？

以 C 语言的一段代码为例，在 Linux 电脑上执行。

**被执行的 C 语言代码：**

```c
#include<stdio.h>
void main(){
    int a = 1;
    int b = 2;
    a = a + b;
    printf("%d",a);
}
```

执行下面的命令：

```shell
gcc -g -c test.c
objdump -d -M intel -S test.o
```

结果就是显示出**汇编语言**和**机器码**：

```
test.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <main>:
#include<stdio.h>
void main(){
   0:	55                   	push   rbp
   1:	48 89 e5             	mov    rbp,rsp
   4:	48 83 ec 10          	sub    rsp,0x10
	    int a = 1;
   8:	c7 45 f8 01 00 00 00 	mov    DWORD PTR [rbp-0x8],0x1
	        int b = 2;
   f:	c7 45 fc 02 00 00 00 	mov    DWORD PTR [rbp-0x4],0x2
		    a = a + b;
  16:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  19:	01 45 f8             	add    DWORD PTR [rbp-0x8],eax
		        printf("%d",a);
  1c:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  1f:	89 c6                	mov    esi,eax
  21:	48 8d 3d 00 00 00 00 	lea    rdi,[rip+0x0]        # 28 <main+0x28>
  28:	b8 00 00 00 00       	mov    eax,0x0
  2d:	e8 00 00 00 00       	call   32 <main+0x32>
}
  32:	90                   	nop
  33:	c9                   	leave  
  34:	c3                   	ret    
```

**分析：**

一行 C 语言代码由一条或者多条汇编代码和机器码表示。这里的 16进制数字串就是机器码，后面对应的是汇编码。汇编码是人可以看懂的。

---

#### 解析指令和机器码

Intel  的 CPU 有 2000 条左右的指令，一般来说常见的指令可以分成五大类：

##### **算术类指令、数据传输类指令、逻辑类指令、条件分支类指令、无条件跳转指令。**

---

##### 汇编器把汇编翻译成机器码

不同的 CPU 有不同的指令集，也就对应着不同的 **汇编语言** 和 **机器码**。下面以最简单的 MIPS 指令集说明：

| 指令类型 | 6 位   | 5 位 | 5 位 | 5 位 | 5 位           | 6 位         | 解释                           |
| -------- | ------ | ---- | ---- | ---- | -------------- | ------------ | ------------------------------ |
| R        | opcode | rs   | rt   | rd   | shamt   位移量 | funct 功能码 | 算术操作、逻辑操作             |
| I        | opcode | rs   | rt   |      |                |              | 数据传输、条件分支、立即数操作 |
| J        | opcode |      |      |      |                |              | 无条件跳转                     |

加法算术指令：add t0,s1,s2

![转换关系](/img/mips-add.jpeg)

转换成打孔带就是：

![打孔带代码](/img/punch-tape.png)



#### 思考题

我们把一个数字在命令行里面打印出来，背后对应的机器码是什么？...

