## API
- [Gulp Docs](https://github.com/gulpjs/gulp/tree/master/docs)

## 基础功能模块
- [gulp](https://www.npmjs.com/package/gulp): gulp总服务
- [gulp-util](https://www.npmjs.com/package/gulp-util): gulp的一些功能扩展
- [gulp-if](https://www.npmjs.com/package/gulp-if): 条件判断
- [gulp-plumber](https://www.npmjs.com/package/gulp-plumber): 阻止文件流报错阻塞任务执行
- [gulp-clean](https://www.npmjs.com/package/gulp-clean): 清空目录，可用rimraf替换
- [gulp-concat](https://www.npmjs.com/package/gulp-concat): 合并文件
- [del](https://www.npmjs.com/package/del): pretty much rimraf with a Promose API
- [stream-combiner2](https://www.npmjs.com/package/stream-combiner2): 合并文件流
- [gulp-cache](https://www.npmjs.com/package/gulp-cache): 缓存文件，比如压缩图片之前，缓存下之前的图片
- [gulp-load-plugins](https://www.npmjs.com/package/gulp-load-plugins): Automatically load any gulp plugins in your package.json, 方便我们直接通过 `$` 引用插件
- [run-sequence](https://www.npmjs.com/package/run-sequence): Run a series of dependent gulp tasks in order


## 预览服务
- [fed-ssi](): 开启ssi加载方式
- [fed-mock](): 数据模拟
- [gulp-connect]():  开启静态服务器
- [browser-sync](https://www.npmjs.com/package/browser-sync): Live CSS Reload & Browser Syncing
- [apache-server-configs](https://www.npmjs.com/package/apache-server-configs): 设置 apache 服务器啥的

## watch
gulp提供的watch方法，路径传递相对路径的话，不可监听文件新增和删除。需要使用绝对路径。

- [gulp-watch](https://www.npmjs.com/package/gulp-watch)
- [Gulps gulp.watch not triggered for new or deleted files](http://stackoverflow.com/questions/22391527/gulps-gulp-watch-not-triggered-for-new-or-deleted-files)
- [gulp-newer](https://www.npmjs.com/package/gulp-newer): Only pass through newer source files


## 预编译处理
- [gulp-header](https://www.npmjs.com/package/gulp-header): 在文件头部添加文本内容
- [gulp-sourcemaps](https://www.npmjs.com/package/gulp-sourcemaps): Source map support for gulp.js

### HTML
- [gulp-inline-imgurl](https://www.npmjs.com/package/gulp-inline-imgurl)
- [gulp-useref](https://www.npmjs.com/package/gulp-useref): 在html中写可动态替换的标签, 注意设置 noAssets, 不然会默认拷贝 assets 目录
- [gulp-usemin](https://www.npmjs.com/package/gulp-usemin): 替换html中的动态标签，和上面差不多吧

### CSS
- [gulp-sass](https://www.npmjs.com/package/gulp-sass)
- [gulp-autoprefixer](https://www.npmjs.com/package/gulp-autoprefixer): Prefix CSS with Autoprefixer
- [sprity](): css雪碧图拼接
- [sprity-sass](): 如果需要导出sass格式，需添加
- [fas-css-rulversion](): 添加css里面图片的rul时间戳
- [gulp-trimlines](https://www.npmjs.com/package/gulp-trimlines): 去掉行首，行尾的空白字符

### JavaScript
- [gulp-tmod](https://www.npmjs.com/package/gulp-tmod): 预编译artTemplate模板

### 版本号处理
- [gulp-rev-append](https://www.npmjs.com/package/gulp-rev-append)：根据文件内容生成版本号。
- [gulp-rev](https://www.npmjs.com/package/gulp-rev)

## 压缩处理
- [gulp-htmlmin](https://www.npmjs.com/package/gulp-htmlmin): minify HTML
- [gulp-clean-css](https://github.com/scniro/gulp-clean-css): Minify css with clean-css.
- [gulp-cssnano](https://www.npmjs.com/package/gulp-cssnano): Minify CSS with cssnano
- [gulp-imagemin](https://www.npmjs.com/package/gulp-imagemin): 图片压缩处理.
- [gulp-uglify](https://www.npmjs.com/package/gulp-uglify): Minify files with UglifyJS, 但不支持直接压缩 es6 语法，需要借助 babel 先转换



## 代码规范检测
- [gulp-jshint]()
- [jshint-stylish]()

## 日志输出
- [gulp-logwarn](https://www.npmjs.com/package/gulp-logwarn): 在终端中显示日志
- [gulp-size](https://www.npmjs.com/package/gulp-size): Display the size of your project


## 性能检测
- [psi](https://www.npmjs.com/package/psi): PageSpeed Insights with reporting


## sw(service worker)
- [sw-precache](https://www.npmjs.com/package/sw-precache): Generates a service worker to cache your local App Shell resources.
- [sw-toolbox](https://www.npmjs.com/package/sw-toolbox): Service Worker Toolbox provides some simple helpers for use in creating your own service workers.
