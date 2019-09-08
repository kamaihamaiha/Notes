### SQLite 简介

**SQLite 是一个进程内的库，实现自给自足、无服务器、零配置、事务性的 SQL 数据库引擎。**   

SQLite 引擎不是一个独立的进程，可以按应用程序需求进行静态或者动态连接。



#### 特点

* 不需要一个单独的服务器进程或操作的系统 (无服务器的)。
* 不需要配置，不需要安装和管理。
* 一个完整的 SQLite 数据库是存储在一个单一的跨平台的磁盘文件。
* 很小，轻量级，完全配置是小于 400KiB， 省略可选功能配置时小于 250KiB。
* 自给自足，不需要任何外部的依赖。
* 事务完全兼容 ACID，允许从多个进程或线程安全访问。
* 支持 SQL92 (SQL2) 标准的大多数查询语言的功能。
* 使用 ANSI-C 编写，且提供了简单易用的 API。
* 可在 Linux, Mac OS-X，Android，IOS 和 Windows (Win32, WinCE, WinRT) 中运行。

---



#### 局限性

在 SQLite 中，SQL92 不支持的特性如下：

| 特性             | 描述                                                         |
| ---------------- | ------------------------------------------------------------ |
| right outer join | 只实现了 left outer join。                                   |
| full outer join  | 只实现了left outer join。                                    |
| alter table      | 支持 rename table 和 alter table 的 add column variants 命令，不支持 drop column、alter column、add constraint。 |
| Trigger 支持     | 支持 for each row 触发器，但不支持 for each statement 触发器。 |
| VIEWs            | 视图只是读的，不开一在视图上执行 delete、insert 或 update 语句。 |
| grant 和 revoke  | 可以应用的唯一的访问权限是底层操作系统的正常文件访问权限。   |

---

#### SQLite 命令

类似 SQL，按照操作性质可以分为:

* DDL - 数据库定义语言：create, alter,drop
* DML - 数据库操作语言：insert, update, delete
* DQL - 数据库查询语言： selete