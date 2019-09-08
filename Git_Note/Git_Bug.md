### 常见错误处理

#### 1.

remote: HTTP Basic: **Access denied**   

 fatal: Authentication failed for 'http://******** 

* 服务器的用户名和密码与本地用户名密码配置有冲突。注意 ，配置的 user.name 值不是用户名。在 clone 的时候，弹窗提示用户名是：git 服务器登录账号。

* 解决

  ```shell
  git config --system --unset credential.helper
  #然后在执行 clone 操作，会提示 Username for 'http://xxx':
  #这时要输入 git 服务器的用户名，而不是 配置的 user.name 值
  ```

  

#### 2. 使用 git 版本控制，在执行 “git add .”命令后提示：

The file will have its original line endings in your working directory.
     warning: LF will be replaced by CRLF in xxx.xxx

* CRLF: Carriage-Return Line-Feed 回车换行。          原因是换行方式不统一。

* 解决

  ```shell
  git config --global core.autocrlf  false
  ```

* 参考：http://www.oschina.net/question/59932_33853

