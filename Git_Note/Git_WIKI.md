### Git 版本控制工具

#### 初体验[小白先上手]

1. 在某一个 Git 服务器上面注册了用户。

2. 安装了 git 客户端程序

3. 配置身份

   ```shell
   1. git config --global user.name "your name"
   2. git config --global user.email "xxx.@gmail.com"
   ```

4. 检查是否配置成功

   ```shell
   git config --global user.name
   git config --global user.email
   ```

5. 创建代码仓库

   仓库(Repository)是用于保存版本管理所需信息的地方，所有本地提交的代码都会被提交到代码仓库中，如果有需要还可以再推送到远程仓库中。

   **操作**：

   	到任意一个项目的目录下，打开 git bash ，输入：

   ```
   git init
   ```

   此时，该目录下多了一个文件夹：**.git**，该文件夹就是记录本所有 git 操作信息，要删除本地仓库，只要删除这个隐藏的文件夹即可。

6. 提交本地代码

   ```shell
   #先添加文件
   git add file.name
   #或者添加所有的文件
   git add .
   #提交
   git commit -m "commit info"
   ```

7. 远程关联仓库

   ```shell
   git remote add origin "remote respository address"
   ```

8. 提交到远程仓库

   ```shell
   git push -u origin master
   ```

#### 上车了

##### 忽略文件

把指定的文件或目录排除在版本控制之外，如果有就是：**.gitignore**，Android Studio 会自动生成该文件，并且生成了一些默认配置。根目录下，app 模块下都有一个。其中，app 模块下面忽略文件建议再增加 2 个：**/src/test**和 **/src/androidTest**。

##### 查看修改内容

查看自从上次提交后，文件修改的内容

```shell
git status
```

---

##### 删除已经提交的文件

在上传项目时，有时脑残忘记忽略了 **.idea**，就直接 push 上去了。

**解决：**

```shell
git rm -r cached.idea
git commit -m 'xxx'
git push -u origin master
```



#### 分支

##### 1. 切换分支

* 查看 **远程**分支

```shell
git branch -a
```

* 结果：

```shell
* master
remotes/origin/分支1
remotes/origin/分支2
remotes/origin/分支3
...
remotes/origin/master
```

* 查看 **本地**分支

```shell
git branch 
```

* 结果：

```shell
* master
```

* 切换分支到 **分支1*

```shell
git checkout -b 分支1 origin/分支1
```

* 切换分支到 **master** 分支

```shell
git checkout master
```

---

#### 常用命令

```shell
# 查看 git 客户端版本
git --version

# 得到一个完整的 git 子命令列表
git help -all

# 创建一个新的 Git 版本库
git init

# 增加该目录下的某个文件到版本库中
git add file

# 把当前目录及子目录中的文件都添加到版本库里
git add.

# 显示 add 后但是没有 commit 的文件
git status

# 配置提交作者用户名
git config user.name "张三"

# 配置提交作者邮箱
git config user.email "zhangsan@gmail.com"

# 查看版本库里一系列单独提交的历史,如果继续看更早的就按 "E"
git log

# 按住 Esc 连续按 2 次 大写的 "Z"，就能退出当前命令

```

