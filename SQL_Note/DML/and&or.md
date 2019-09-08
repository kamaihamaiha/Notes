### SQL AND & OR 运算符

**用于基于一个以上的条件对记录进行过滤**

* and 和 or 可在 **where** 语句中把两个或多个条件结合起来。
* 如果 2  个条件都成立，则用 and 。
* 如果只要有 1 个条件成立，则用 or。

#### AND 运算符实例

使用 AND 来显示所有姓为 "Carter" 并且名为 "Thomas" 的人：

```sql
select * from Person where FirstName='Thomas' and LastName='Carter'
```

#### OR 运算符实例

使用 OR 来显示所有姓为 "Carter" 或者名为 "Thomas" 的人：

```sql
select * from Person where FirstName='Thomas' or LastName='Carter'
```

#### 结合 AND 和 OR 运算符

我们也可以把 AND 和 OR 结合起来（使用圆括号来组成复杂的表达式）:

```sql
select * from Person where (FirstName='Thomas' or FirstName='William') and LastName='Carter'
```

