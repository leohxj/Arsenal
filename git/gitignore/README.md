`.gitigore`是为git指定需要忽略的文件。它是一个文本文件，里面包含忽略规则。详见: [docs/gitignore](https://git-scm.com/docs/gitignore)

## 模版文件
github上有维护一个常用的gitignore模版，见: [github/gitignore](https://github.com/github/gitignore), 我们需要的时候可以去这里查询对应的模版。

## 自动生成工具
既然是模版，那就有人会工具化，这里提供两个自动生成的工具:
- [gitignore.io](https://www.gitignore.io/): 既有web界面，又有命令行工具，推荐！
- [joe](http://karan.goel.io/joe/): 命令行工具。


## gitignore.io 命令
在`.gitconfig`中配置:

```
[alias]
    st = status
    gi = "!gi() { curl -L -s https://www.gitignore.io/api/$@ ;}; gi"
```

命令行中通过 `git gi` 即可使用。