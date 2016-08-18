npm, node package module, node模块管理工具。文档参见: [npm documentation](https://docs.npmjs.com/)

# npm更新方式
安装node的时候，默认会安装一个npm版本。由于npm版本的更新频率一般大于node，所以建议我们再自行安装一下npm, 通过命令 `npm install -g npm`，获取最新版本。

# 版本管理更新方式
## windows平台
- [npm版本管理工具](https://github.com/npm/npm/wiki/Troubleshooting#upgrading-on-windows)： Upgrading on Windows

> > By default, npm is installed alongside node in C:\Program Files (x86)\nodejs. npm's globally installed packages (including, potentially, npm itself) are stored separately in a user-specific directory (which is currently C:\Users\<username>\AppData\Roaming\npm). Because the installer puts C:\Program Files (x86)\nodejs before C:\Users\<username>\AppData\Roaming\npm on your PATH, it will always use version of npm installed with node instead of the version of npm you installed using npm -g install npm@<version>.


# 手动更新方式
其实npm也是一个包，存放在`node_module`下，所以我们要替换，可直接替换对应的npm目录，文件从github上拉取就行: [npm/releases](https://github.com/npm/npm/releases)

>  You can download a zip file , and unpack it in the `node_modules\npm\` folder inside node's installation folder.

比如我新建一个目录结构:

```
-- node_modules
---- npm
-- npm
-- npm.cmd
```

执行`npm`，默认会从当前目录的`node_modules`查找包，然后执行。

# 参考
- [github: npm/npm](https://github.com/npm/npm)
- [node,npm版本](https://nodejs.org/en/download/releases/)
- [玩转npm](https://github.com/icepy/_posts/issues/36)