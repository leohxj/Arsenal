# 官方方式
访问 [node.js官网](https://nodejs.org/en/)， 选择`Downloads`进入下载页面，选择对应的平台和版本，通常我们下载的是直接安装包，下载后直接安装，命令行即可使用`node`与`npm`了。

## 版本说明
- LTS:  Long Term Support 简称，长期稳定发行版本。更多信息可查看: [LTS schedule](https://github.com/nodejs/LTS#lts_schedule)
- Current: 最新版本，包含许多新特性的版本。

关于node与npm版本的对应关系以及历史版本，可查看: [Previous Releases](https://nodejs.org/en/download/releases/)

# 版本管理方式
官方提供的方式，安装完成后系统保留唯一的node版本，如果我们存在项目使用不用版本node的时候，或者我想要试验不同版本的时候，需要重新全局安装，相关node_modules都会被重置。极其不方法，所以我推荐大家使用基于版本管理方式的安装。

## Windows平台
推荐两个工具:
- [nvm-windows](https://github.com/coreybutler/nvm-windows): A node.js version management utility for Windows. Ironically written in Go.
- [hakobera/nvmw](https://github.com/hakobera/nvmw)

### nvm-windows
这是我在windows下使用的node版本管理工具。

需要注意的是环境变量中，确保有`NVM_HOME`和`NVM_SYMLINK`, 在这两个之前应该还有一个`C:\Program Files\nodejs;`（如果之前安装过node应该是这样，默认nvm会安装对应版本的npm，但是也会安装失败，有一个这个路径，方便npm有默认值）

原理应该是这样的：
> nvm会在~/user目录下，比如我当前`C:\Users\15050107\AppData\Roaming`创建一个nvm目录，所有node版本都在这里安装。同时`C:\Users\15050107\AppData\Roaming`下也会有一个默认的npm目录，管理npm。而`C:\Program Files\nodejs`目录是一个软链接，被nvm操作，指向当前版本的node。

但是每一个npm安装的模块，都会在nvm目录下对应的node里面的node_modules里。

node模块寻找的路径，应该是优先查找`C:\Program Files\nodejs;`目录下，再查找`C:\Users\15050107\AppData\Roaming\npm`目录。

## Mac平台
参考: [搭建 Node.js 开发环境](https://github.com/alsotang/node-lessons/tree/master/lesson0)

推荐几个工具：
- [tj/n](https://github.com/tj/n)
- [OiNutter/nodenv](https://github.com/OiNutter/nodenv)
- [creationix/nvm](https://github.com/creationix/nvm)


# 国内镜像
由于GFW的关系，我们使用`npm`进行模块安装的时候，可能会失败。所以我们需要对应的国内镜像，比较出名和经常使用的是:
- [淘宝 NPM 镜像](https://npm.taobao.org/)