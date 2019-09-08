## 硬件信息查看



#### 1. CPU

**CPU 温度**

```shell
sensors
```



**CPU 详细信息: ** 有多少核心、频率、特性等

```
cat /proc/cpuinfo
```



**查看 CPU 频率**

```shell
cat /proc/cpuinfo | grep MHz|uniq
```

---



#### 2. 内存

**查看内存信息**

```shell
cat /proc/meminfo
```

---



#### 3. 磁盘

**列出分区**

```shell
fdisk -l
```





