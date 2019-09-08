### DDL 语句
**数据库定义语言[Data Definition Languages]**: 定义了不同的数据段、数据库、表、列、索引. 常用的关键字有 **create** **drop** **alter**   
以 Ubuntu 下的 MySQL 为例.

#### 启动 MySQL
```
sudo mysql
# 退出
exit
```
---
#### 常见操作

- 创建数据库

  ```sql
  create database 数据库名
  ```

- 删除数据库

  ```sql
  drop databases 数据库名
  ```

- 选则要使用的数据库

  ```sql
  use 数据库名
  ```

- 创建表

  ```sql
  create table 表名(
  column1 column_type 约束条件(可选),
  column2 column_type 约束条件(可选),
  ...
  columnn column_type 约束条件(可选)
  );
  ```

- 查看表结构

  ```sql
  desc 表名;
  ```

- 查看表定义信息

  ```sql
  show create table 表名 \G;
  ```

- 删除表

  ```sql
  drop table 表名;
  ```

- 更改表名

  ```sql
  alter table 表名 rename 新表名;
  ```

- 修改表

  - 修改表类型

    ```sqlite
    alter table 表名 modify 列明 列新类型;
    ```

  - 增加表字段

    ```sql
    alter table 表名 add 列明 列类型;
    ```

  - 删除表字段

    ```sql
    alter table 表名 drop column 列名;
    ```

  - 字段改名

    ```sqlite
    alter table 表名 change 旧字段名 新字段名;
    ```

  - 修改字段排列顺序

    ```sql
    # 新增的字段 A 加在字段 B 的后面
    alter table 表名 add A A类型 after B;
    
    # 把字段 A 放到最前面
    alter table 表名 列名 列类型 first;
    ```


	