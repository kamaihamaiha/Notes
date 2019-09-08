### SQL Insert Into 语句

**用于向表格中插入新的行。**

**语法**

```sqlite
insert into tableName values (value1,value2,...)
```

也可以指定所要插入数据的列：

```sql
insert into tableName (column1,column2,...) values (value1,value2,...)
```

#### 插入新的行

**“Persons” 表：**

| Name   | Age  | Gender | City   |
| ------ | ---- | ------ | ------ |
| 张无忌 | 22   | 男     | 武当山 |

**SQL 语句：**

```sql
insert into Persons values ('赵敏','20','女','蒙古大漠')
```

#### 在指定的列中插入数据

**“Persons” 表：**

| Name   | Age  | Gender | City     |
| ------ | ---- | ------ | -------- |
| 张无忌 | 22   | 男     | 武当山   |
| 赵敏   | 20   | 女     | 蒙古大漠 |

**SQL 语句：**

```sql
insert into Persons (Name,City) values ('小昭','波斯')
```

**结果：**

| Name   | Age  | Gender | City     |
| ------ | ---- | ------ | -------- |
| 张无忌 | 22   | 男     | 武当山   |
| 赵敏   | 20   | 女     | 蒙古大漠 |
| 小昭   |      |        | 波斯     |

