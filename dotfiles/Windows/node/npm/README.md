淘宝有 `cnpm` 包，可以使用淘宝国内的镜像，但是它所安装的包是软连接形式，不易针对项目修改。所以建议命令使用 `npm` ，镜像设置为淘宝的 `https://registry.npm.taobao.org`。

# cnpm
如果希望使用 `cnpm` 命令，也建议设置一个 alias 使用， 比如:

## windows powershell
```
$userHome = "C:\Users\15050107"

function cnpm {
    npm --registry=https://registry.npm.taobao.org --cache=$userHome\.npm\.cache\cnpm --disturl=https://npm.taobao.org/dist --userconfig=$userHome\.cnpmrc $args
}
```

## windows cmd

```
@echo off
set HOME="C:\Users\15050107"

doskey cnpm=npm --registry=https://registry.npm.taobao.org --cache=%HOME%\.npm\.cache\cnpm --disturl=https://npm.taobao.org/dist --userconfig=%HOME%\.cnpmrc $*
```

## bash

```
$ echo '\n#alias for cnpm\nalias cnpm="npm --registry=https://registry.npm.taobao.org \
  --cache=$HOME/.npm/.cache/cnpm \
  --disturl=https://npm.taobao.org/dist \
  --userconfig=$HOME/.cnpmrc"' >> ~/.zshrc && source ~/.zshrc
```