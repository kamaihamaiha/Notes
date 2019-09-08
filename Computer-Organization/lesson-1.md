###  01 | 冯.诺伊曼体系结构：计算机组成的金字塔

#### 计算机的基本硬件组成

**CPU** + **Memory** + **Mortherboard** + **I/O**

使用图形界面操作系统的计算机，还需要显卡, 也就是：Graphics Card。显卡里面有图形处理器：GPU。

#### 冯.诺伊曼体系结构

- Von Neumann architecture: 存储程序计算机。
- 冯.诺伊曼在 First Draft of a Report on the EDVAC 也就是《第一份草案》中描述了计算机的组成：
  - 处理器单元(Processing Unit) = 算术逻辑单元(Arithmetic Logic Unit, ALU) + 处理器寄存器(Processor Register)。
  - 控制器单元(Control Unit, CU) = 指令寄存器(Instruction Register) + 程序计数器(Program Counter)。
  - 内存，用来存储数据和指令。和外部存储。
  - 输入输出设备。
- 任何一个计算机的任何一个部件，都可以归到运算器，控制器，存储器，输入输出设备中。所有现代计算机也都是基于这个基础架构设计开发的。

#### 推荐阅读

First Draft of a Report on the EDVAC.

阅读经典的原文，是从一个普通工程师迈向优秀工程师必经的一步。对于工程师来说，直接读取英文论文的原文，既可以搞清楚，弄明白对应的设计及背后的思路来源，还可以帮助你破除对于论文或者核心技术的恐惧心里。