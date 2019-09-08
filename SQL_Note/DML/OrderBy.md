### Order By 语句

**用于对结果集进行排序**

用于根据指定的列对结果集进行排序

默认升序排列

想用降序，用 DESC

**语法：**

```sql
select 列1, 列2, ...
from 表名
order by 列1, 列2, ... ASC|DESC
```



#### 实例 1

Orders 表：

| Company  | OrderNumber |
| -------- | ----------- |
| IBM      | 3532        |
| W3School | 2356        |
| Apple    | 4698        |
| W3School | 6953        |

以字母顺序显示公司名称：

```sql
select Company, OrderNumber from Orders order by Company
```

以字母顺序显示公司名称，并以数字顺序显示顺序号：

```sql
select Company, OrderNumber from Orders order by Company,OrderNumber
```

以逆字母顺序显示公司名称：

```sql
select Company, OrderNumber form Orders order by Company DESC
```

以逆字母顺序显示公司名称，并以数字顺序显示顺序号：

```sql
select Company, OrderNumber from Orders order by Company DESC, OrderNumber ASC
```

