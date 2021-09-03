## GitHub

GitHub 的仓库连不上，不管是 clone、pull、push。报错信息如下：

```
Failed to connect to github.com port 443: Operation timed out
```

### 第一种情况：仓库域名无法访问

**处理步骤：**

1. 先查看自己电脑的 hosts 文件。
2. 查询可以用的 IP 地址。
3. 修改 hosts 文件。

#### 1. 先查看自己电脑的 hosts 文件

我是 Mac OX 系统，

```shell
# 查看 hosts 文件
cat /etc/hosts
```

要么是没有配置 github 相关地址，要么是配置的地址连接不上。

#### 2. 查询可以用的 IP 地址

查询这两个域名的地址：github.com 和 gitHub.global-ssl.fastly.net。

[查询网址](https://www.ipaddress.com)

#### 3. 修改 hosts 文件

第二步查询到 IP 地址后，在 hosts 文件中配置。如下：

```shell
# 先以管理员身份登录. 输入密码后，即可
sudo -i

# 打开 hosts 文件，然后编辑
vim /etc/hosts

# 这个是随便写的，要替换成自己查询到的 IP 地址
190.42.142.3 github.com
158.167.9.8 github.global-ssl.fastly.net
```



---

### 第二种情况：需要梯子的资源

git 设置代理：

```shell
# localhost:port 是自己电脑 hosts 实际的地址
git config --global http.proxy "localhost:port"
git config --global https.proxy "localhost:port"
```

完成后，取消：

```shell
git config --global --unset http.proxy
git config --global --unset https.proxy
```

