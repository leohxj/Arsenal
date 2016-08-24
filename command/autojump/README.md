命令行下跳转目录的快捷方式。

# 安装

## windows下
windows下我使用的是： [wting/autojump](https://github.com/wting/autojump)

需要先确保安装clink, 再下载autojump，手动安装。

## mac下
mac下，最好先安装`oh-my-zsh`，这个是个很强的命令行增强工具。

mac下对应的工具有：
- [wting/autojump](https://github.com/wting/autojump)：`brew install autojump`即可
- [clvv/fasd](https://github.com/clvv/fasd)
- [rupa/z](https://github.com/rupa/z): z is the new j, yo


目前我在Mac下使用的也是z。

# 使用

因为我在Mac下使用的是`z`，为了保持一致，在windows平台下，我设置了一个`z.bat`转换`j`命令:

```
@echo off
j %*
```

直接`z 常用目录名称`，即可直达对应目录。目录名称可以是简写。
