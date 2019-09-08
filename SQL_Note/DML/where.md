### SQL WHERE 子句

#### where 用于规定选择的标准

##### 语法

```sql
select 列名称 from 表名称 where 列 运算符 值
```

**注意：**文本值用单引号，数值不用引号。

where 子句用的运算符：

| 操作符  | 描述         |
| ------- | ------------ |
| =       | 等于         |
| <>      | 不等于       |
| >       | 大于         |
| <       | 小于         |
| >=      | 大于等于     |
| <=      | 小于等于     |
| BETWEEN | 在某个范围内 |
| LIKE    | 搜索某种模式 |

**注释：**在某些版本的 SQL 中， <> 可以写为：!=。

**例子：**

```sql
select * from Persons where FirstName='Bush'

select * from Person where Year>1965
```

