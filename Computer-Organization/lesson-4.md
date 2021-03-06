### 04 | 穿越功耗墙，我们该从哪些方面提升 “性能”？

程序的 CPU 执行时间 =  指令数 x CPI x 时钟周期时间

首先是降低 **时钟周期时间**，就是提高时钟频率。80 年代开始，研发 CPU 的硬件工程师们，就在 CPU 上多放   

晶体管，以提高主频。

##### 主频提高路线

8086【5MHz 1978】→ 80386【40MHz 1985】→ 486【100MHz 1989】→ 奔腾4【1.4GHz 2000】

Intel 曾经夸下海口，表示奔腾 4 所用的 CPU 结构可以做到 10GHz。但是最终上限就限定在了 3.8GHz。靠提高主频提升性能遇到了瓶颈。

##### 超大规模集成电路

CPU 一般被称作 **超大规模集成电路**（Very-Large-Scale Integration,VLSI）。这些电路实际上是由一个个晶体管组成的。CPU 在计算，其实就是让晶体管里面的 “开关“ 不断地去 ”打开“ 和 ”关闭“，来组合完成各种运算和功能。

想要计算更快，一方面要在 CPU 上，同样的面积里面，多放些晶体管，也就是 **增加密度**；另一方面，让晶体管 “打开” 和 “关闭” 得更快一点，也就是 **提升主频**。这两个都会增加功率，带来耗电和散热问题。

因此，CPU 上能放下的晶体管数量和晶体管的 “开关” 频率也是有限的。**CPU 功率公式：**

```
CPU 功耗 ~= 1/2 x 负载电容 x U² x 开关频率 x 晶体管数量
```

注：U 是电压。

想多放晶体管，就要把晶体管造的小一点。这就是平时说的提高 “制程”。从 28nm 到 7nm，相当于晶体管本身编程原来的 1/4 大小。

但是功耗要控制，所以要降低电压。

---

#### 并行优化，理解阿姆达尔定律

从奔腾 4 开始，通过提升主频比较难去实现性能提升，于是就推出了 多核 CPU，通过提升吞吐率来达到目的。

**并行提高性能，能解决的问题需要满足的条件：**

1. 计算本身可以分解成几个可以并行的任务。
2. 需要能够分解好问题，并确保几个核心的结果能够汇总到一起。
3. 在 “汇总” 阶段，没办法并行了，要按照顺序一步一步来。

于是就引出了性能优化中，常用到的一个经验定律： **阿姆达尔定律**（Amdahl's Law）。

```
优化后的执行时间 = 受优化影响的执行时间 / 加速倍数 + 不收影响的执行时间
```

---

#### 其他性能提升方法

- **加速大概率事件。** 最典型的就是，过去几年的深度学习，用 GPU 代替 CPU。
- **通过流水线提高性能。** 把 CPU 指令执行过程进行拆分，细化运行。
- **通过预测提高性能。** 通过预测下一步改干什么，而不是等上一步运行的结果。

