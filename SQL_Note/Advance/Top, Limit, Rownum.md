### Top, Limit, Rownum

#### Top 子句

* 用于指定要返回的记录数量。
* 在包含数千条记录的大型表上很有用。返回大量记录会影响性能。

**注：**并不是所有的数据库系统都支持 top 子句，MySQL 支持 Limit，而 Oracle 使用 Rownum。

**SQL Server / MS Access 语法**

```sql
select top number|percent 列名...
from 表名
where 条件;
```

**实例：**

```sql
select top 5 
from Persons;
#或者,从表中选择前 10% 的记录。
select 10 percent * 
from Persons;
```

**添加一个条件**

```sql
select top 5
from Persons
where Age=18;
```



---



**MySQL 语法：**

```sql
select 列名...
from 表名
where 条件
limit number;	
```

**实例：**

```sql
select * 
from Persons
limit 5;
```

**添加一个条件**

```sql
select *
from Persons
where Age=18
limit 5;
```



---

**Oracle 语法：**

```sql
select 列名...
from 表名
where rownum <= number;
```

**实例：**

```sql
select * 
from Persons
where rownum <=5;
```

**添加一个条件**

```sql
select * 
from Persons
where Age=18 and rownum <= 5;
```

