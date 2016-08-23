别名，用于简化常用输入。我们在使用命令行的时候，可以将常用的命令通过`alias`方式简化。

# git
git提供了`alias`命令，比如我们可以在配置文件中设置：

```
[alias]
    st = status
    gi = "!gi() { curl -L -s https://www.gitignore.io/api/$@ ;}; gi"
```

以后我们输入`git st` 替代 `git status`

# npm
npm没有直接提供配置`alias`方式，它内置了一些, 比如 `npm ls` 为 `npm list`。

我们可以使用[run script](https://docs.npmjs.com/cli/run-script)，但是需要在项目的`package.json`中，配置:
```
{
    "scripts" : {
        "preinstall" : "./configure",
        "install" : "make && make install",
        "test" : "make test"
    }
}
```

之后变可以通过`npm xxx`运行，npm也提供我们指定自定义的名称，比如:

```
{
    "scripts" : {
        "xxx" : "echo 'xxx'"
    }
}
```

之后通过 `npm run xxx` 运行。


# windows下封装
有些命令无法提供配置，我们可以自己建立一个`.bat`文件封装，比如我将在命令行下打开资源管理器的命令封装为`open`, 新建一个`open.bat`文件，内容：

```
@echo off
explorer.exe %*
```

在命令行下，使用`open .` 即可在资源管理器中打开当前目录。

## doskey
windows批处理提供一个`doskey`命令，相当于`alias`,比如我们建立一个`alias.bat`文件，内容为:

```
@echo off
doskey ls=dir $*
```

然后在命令行下运行此批处理文件，在当前的命令行上下文中，即可使用`ls`简化`dir`命令。但是，当我们新开命令行的时候，实际创建了新的上下文，就不能直接使用了。

解决方案，也就是想办法在启动`cmd.exe`的时候，增加一个参数，让其启动的时候先执行`alias.bat`文件，就能为打开的命令行上下文添加`alias`了。

参考:
- [Microsoft DOS doskey command](http://www.computerhope.com/doskeyhl.htm)
- [Permanent Windows command-line aliases with doskey and AutoRun](http://darkforge.blogspot.com/2010/08/permanent-windows-command-line-aliases.html)
- [How to set aliases for the command prompt in Windows](http://winaero.com/blog/how-to-set-aliases-for-the-command-prompt-in-windows/)
- [Adding an alias in Windows 7 or making ls = dir in a command prompt](http://www.rhyous.com/2010/10/20/adding-an-alias-in-windows-7-or-making-ls-dir-in-a-command-prompt/)

