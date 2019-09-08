### SQL Delete 语句

**用于删除表中的行。**

---

**语法**

```sql
delete from 表名 where 列名 = 值
```

---

**Person:**

| Name   | Gender | Age  |
| ------ | ------ | ---- |
| 张无忌 | 男     | 20   |
| 赵敏   | 女     | 18   |

**删除某行**

“张无忌”会删除：

```sql
delete from Person where Name = '张无忌'
```

**删除所有行**

可以在不删除表的情况下删除所有的行。这意味着表的结构、属性和索引都是完整的。

```sql
delete from 表名
```

或者：

```sql
delete * from 表名
```

