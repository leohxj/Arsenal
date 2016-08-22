国内的网络环境，可能会导致我们通过`npm install`安装模块时遇到网络问题。比较出名的解决方案就是 [淘宝NPM镜像](https://npm.taobao.org/)， 相对于的提供一个`cnpm`命令。

## cnpm
提供2种使用方式:
- cnpm模块
- alias方式

### 模块方式
通过`npm install -g cnpm --registry=https://registry.npm.taobao.org` 来安装`cnpm`模块。

**注意**：`cnpm`模块，对`node`版本有依赖，可通过 [package.json](https://github.com/cnpm/cnpm/blob/master/package.json) 查看，比如`4.3.1`版本，依赖的node需要 `"node": ">= 4.3.2"`


## alias方式
windows下，可以在系统环境变量的某个目录，比如我指定添加了一个`C:\Bin`目录，存放自己定义的一些方法，在其中添加 `cnpm.bat`, 文件内容为:

```
@echo off
set HOME=C:\Users\15050107

npm --registry=https://registry.npm.taobao.org --cache=%HOME%\.npm\.cache\cnpm --disturl=https://npm.taobao.org/dist --userconfig=%HOME%\.cnpmrc %*
```

**注意**: windows下，需要设置内部环境变量`HOME`， 然后通过`%HOME%`形式获取，文件路径分隔符使用`\`。


mac, linux 下，可设置:

```
alias cnpm="npm --registry=https://registry.npm.taobao.org \
--cache=$HOME/.npm/.cache/cnpm \
--disturl=https://npm.taobao.org/dist \
--userconfig=$HOME/.cnpmrc"
# Or alias it in .bashrc or .zshrc
$ echo '\n#alias for cnpm\nalias cnpm="npm --registry=https://registry.npm.taobao.org \
  --cache=$HOME/.npm/.cache/cnpm \
  --disturl=https://npm.taobao.org/dist \
  --userconfig=$HOME/.cnpmrc"' >> ~/.zshrc && source ~/.zshrc
```

这样，命令行下一样可以使用 `cnpm` 命令了。