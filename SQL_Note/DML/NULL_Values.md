### SQL NULL Values

SQL 中，**NULL** 用于表示缺失的值。数据库表中某条记录的字段值没有进行过任何存储。

要用 **is null** 和 **is not null** 语法

**is null 语法**

```sql
select 列名
from 表名
where 列名 is null;
```

**is not null 语法**

```sql
select 列名
from 表名
where 列名 is not null;
```

