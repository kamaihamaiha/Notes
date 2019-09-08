### SQL 教程

* 参考资料地址: http://www.w3school.com.cn/sql/index.asp

##### SQL 是用于访问和处理数据库的标准的计算机语言

##### 数据库类型：

* Oracle
* Sybase
* SQL Server
* DB2
* Access

#### 什么是 SQL？

* 结构化查询语言
* 有访问数据库的能力
* 是 ANSI 标准计算机语言的一种

#### SQL 能做什么?

* 查询
* 取回数据
* 插入
* 更新
* 删除
* 创建新数据库
* 在数据库中创建表
* 在数据库中创建存储过程
* 在数据库中创建视图
* 设置**表**、**存储过程**和**视图**的权限

#### 然而...

不幸地是，存在着很多不同版本的 SQL 语言，但是为了与 ANSI 标准相兼容，它们必须以相似的方式共同地来支持一些主要的关键词（比如 SELECT、UPDATE、DELETE、INSERT、WHERE 等等）。

**注释**：除了 SQL 标准之外，大部分 SQL 数据库程序都拥有它们自己的私有扩展！

#### 在网站中使用 SQL

* RDBMS 数据库程序（如：MS Access，SQL Server，MySQL）
* 服务器端脚本语言（如：PHP 或者 ASP）
* SQL
* HTML / CSS

#### RDBMS

RDBMS 是关系型数据库管理系统。 是 SQL 的基础，也是所有现代数据库系统的基础，如：MS SQL Server，IBM DB2，Oracle，MySQL，Microsoft Access。

RDBMS 中的数据存储在被称为**表**（tables）的数据库对象中。 表是相关的数据项的集合，由列和行组成。

##### 数据库表

一个数据库通常包含一个或者多个表。如下面是名为 “Persons” 的表：

| Id   | Name | Address |
| :--- | :--- | :------ |
| 1    | 张三 | 北京    |
| 2    | 李四 | 上海    |
| 3    | 王五 | 广州    |

##### SQL 语句

在数据库执行的大部分操作都由 SQL 语句完成。

下面的语句从表中选取 Name 列的数据：

```sql
select Name from Persons
```

结果：

Name

张三

李四

王五

##### 重要的事情

**SQL 对大小写不敏感！**

##### 分类 SQL DML 和 DDL

DML: 数据库操作语言

DDL: 数据库定义语言

查询和更新指令构成了 SQL 的 DML 部分：

* Select - 获取数据
* Update - 更新数据
* Delete - 删除数据
* Insert info - 插入数据

创建和删除表格构成了 SQL 的 DDL 部分，也可以定义索引（键），规定表之间的链接，施加表间的约束。

最重要的 DDL 语句：

* Create databases - 创建新数据库
* Alter databases - 修改数据库
* Create table - 创建新表
* Alter table - 变更数据库表
* Drop table - 删除表
* Create index - 创建索引
* Drop index - 删除索引









