# init
初始化`package.json`文件，方便依赖管理。

# install
注意目录不要和包重名，不然在使用`npm install --save-dev xxx`的时候回报错：

```
npm ERR! Refusing to install babel-cli as a dependency of it
```

install 命令还可以简写为: `npm i xxx`

## install 参数
- `--save-dev` or `-D`



# list
显示安装的模块，有一些参数:

- `npm ls --parseable`: 以单行形式显示包
- `npm ls --depth`: 默认显示`depth=1`级子目录, 可使用`npm ls --depth=0`显示安装过的包


# dedupe
npm在安装包的时候没有这么“智能”，不过npm dedupe命令做的事就是重新计算依赖关系，然后将包结构整理得更合理。

# root
查看npm安装的路径， `npm root -g`常用。

# rm
删除模块，比如 `npm rm --global gulp`


# publish
- [kanpai](https://github.com/egoist/kanpai): Kanpai is a better way to publish a new version of your node module!

# 参考
- [玩转npm](http://www.alloyteam.com/2016/03/master-npm/)
- [npm 模块安装机制简介](http://www.ruanyifeng.com/blog/2016/01/npm-install.html)
- [Do not sudo npm](http://givan.se/do-not-sudo-npm/)