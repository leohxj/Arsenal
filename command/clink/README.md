[clink](https://github.com/mridgers/clink): 为cmd提供增强的工具，自动补齐之类的。

# 安装
直接下载安装，可安装在自定义的目录中，它会自动添加环境变量。

# autorun
自动安装之后，默认应该打开cmd就会自动先加载了`clink`, 命令行中就可以直接使用`clink`了。

通过 `clink autorun show` 也可以查看当前的配置。比如我这里展示的是：

```
clink autorun set \"D:\Program Files (x86)\clink\0.4.8\clink.bat\" inject --autorun --profile ~/clink
```

底层算是调用了windows的`autorun`命令，在启动`cmd`之前注入`clink`，这里`--profile ~/clink` 我不知道在windows下有何作用。

利用这个条件，我们可以配合`doskey`，完成`alias`命令。比如我在`C:\Bin`下创建一个`alias.bat`文件，里面写入:

```
@echo off
doskey ls=dir $*
```

通过`clink autorun set \"C:\Bin\alias.bat\" "&&" \"D:\Program Files (x86)\clink\0.4.8\clink.bat\" inject --autorun` ，我将这个`alias.bat`也注入到命令行上下文中，这样就可以在命令行中，使用`ls`代替`dir`了。

