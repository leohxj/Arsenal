使用 Yarn 管理 npm global node_module。

## windows
### 安装
方便我们维护模块与迁移。windows 下全局安装方法为 `yarn global add xxx`, 目前 `0.17.10` 版本会在 `node` 目录下，生成 `sh,cmd,cmd.cmd` 三个文件，需要删除 cmd 文件，重命名cmd.cmd 为 cmd。。。这是个 bug.

`~/AppData/Local/Yarn/config/global`下生成：
- `package.json`
- `yarn.lock`

### 查看
`yarn global ls`
