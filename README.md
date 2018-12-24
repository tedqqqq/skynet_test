* 编译：

```
git clone https://github.com/Ding8222/skynet_test.git
cd skynet_test
git submodule update --init
make linux
```

* 运行：

```
login-run.sh
game-run.sh
client.sh
```

* 关于make，不同平台请使用不同参数 linux/macosx/freebsd

.sh文件可能有权限和换行符的问题
* 权限问题：

使用chmod 777 *.sh 获取所有权限

* 换行符问题：

将对应的sh文件中的换行符修改为LF或者在clone之前设置git检出时不转换换行符

```
git config --global core.autocrlf input
```

* 关于数据库的问题：

目前使用了redis和mysql
在config目录下，配置redis和mysql的地址和账号密码，并配置数据库"skynet"（也可以直接根据情况修改），将tools中的sql文件导入到mysql中

可以使用vscode中的插件LuaCoderAssist来进行代码分析和格式化（我这边用的就是这个格式化）
