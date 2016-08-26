## watch
gulp提供的watch方法，路径传递相对路径的话，不可监听文件新增和删除。需要使用绝对路径。

- [gulp-watch](https://www.npmjs.com/package/gulp-watch)
- [Gulps gulp.watch not triggered for new or deleted files?](http://stackoverflow.com/questions/22391527/gulps-gulp-watch-not-triggered-for-new-or-deleted-files)


## 基础功能模块
- [gulp](https://www.npmjs.com/package/gulp): gulp总服务
- [gulp-util](https://www.npmjs.com/package/gulp-util): gulp的一些功能扩展
- [gulp-if](): 条件判断
- [gulp-plumber](https://www.npmjs.com/package/gulp-plumber): 阻止文件流报错阻塞任务执行
- [gulp-clean](https://www.npmjs.com/package/gulp-clean): 清空目录，可用rimraf替换
- [stream-combiner2](https://www.npmjs.com/package/stream-combiner2): 合并文件流


### 预览服务
- [fed-ssi](): 开启ssi加载方式
- [fed-mock](): 数据模拟
- [gulp-connect]():  开启静态服务器


### 预编译处理
- [gulp-sass](https://www.npmjs.com/package/gulp-sass)
- [gulp-autoprefixer]()
- [sprity](): css雪碧图拼接
- [sprity-sass](): 如果需要导出sass格式，需添加
- [gulp-inline-imgurl](https://www.npmjs.com/package/gulp-inline-imgurl)
- [fas-css-rulversion](): 添加css里面图片的rul时间戳
- [gulp-useref](https://www.npmjs.com/package/gulp-useref): 在html中写可动态替换的标签
- [gulp-usemin](https://www.npmjs.com/package/gulp-usemin): 替换html中的动态标签，和上面差不多吧
- [gulp-trimlines](https://www.npmjs.com/package/gulp-trimlines): 去掉行首，行尾的空白字符
- [gulp-header](https://www.npmjs.com/package/gulp-header): 在文件头部添加文本内容

### 版本号处理
- [gulp-rev-append](https://www.npmjs.com/package/gulp-rev-append)
- [gulp-rev](https://www.npmjs.com/package/gulp-rev)

### 压缩处理
- [gulp-minify-html]()
- [gulp-htmlmin](https://github.com/jonschlinkert/gulp-htmlmin): 上面的已经官方废弃了，用这个
- [gulp-minify-css]()
- [gulp-clean-css](https://github.com/scniro/gulp-clean-css): 上面也废弃了，用这个
- [gulp-imagemin](): 图片压缩处理

### 代码规范检测
- [gulp-jshint]()
- [jshint-stylish]()
- [gulp-tmod](): 预编译artTemplate模板

### 日志输出
- [gulp-logwarn](https://www.npmjs.com/package/gulp-logwarn): 在终端中显示日志
