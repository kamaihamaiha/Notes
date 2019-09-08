### SQL Update 语句

**用于修改表中的数据**

**语法：**

```sql
update 表名 set 列名 = 新值 where 列名 = 某值
```

**Person:**

| Name | Age  |
| ---- | ---- |
| 张三 | 1    |
| 李四 | 2    |

**更新某一行的某一列**

把名字是张三的年龄修改为 20。

```sql
update Person set Age = '20' where Name = '张三'
```

**更新某一行的若干列**

把名字是张三的，名字和年龄都修改：

```sql
update Person set Name = '张三丰',Age = '80' where Name = '张三'
```

