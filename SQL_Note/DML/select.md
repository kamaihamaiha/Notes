### Select 和 Select* 语句

#### SQL SELECT 语句

用于从表中选取数据，结果被存储在一个结果表中（结果集）。

##### 语法

```sql
select 列名称 from 表名称
```

和多个列：

```
select 列1,列2 from 表名称
```



以及（选取所有列）：

```sql
select * from 表名称
```

#### SQL SELECT DISTINCT 语句

在选取表的列时，有时会有重复的值。用这个语句可以不显示重复的值。

##### 语法

```sql
select distinct 列名称 from 表名称
```

