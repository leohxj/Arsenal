# node-gyp
## 概述
node-gyp在windows下编译程序需要c++ build, 所以建议安装vs。

## 解决方案
npmrc中插入一句: 这句是为了啥，我也不知道！
```
msvs_version=2013
or
GYP_MSVS_VERSION=2013
```

## Windows安装

```
* On Windows:
    * Python ([`v2.7.10`][python-v2.7.10] recommended, `v3.x.x` is __*not*__ supported)
      * Make sure that you have a PYTHON environment variable, and it is set to drive:\path\to\python.exe not to a folder
    * Windows XP/Vista/7:
      * Microsoft Visual Studio C++ 2013 ([Express][msvc2013] version works well)
        * If the install fails, try uninstalling any C++ 2010 x64&x86 Redistributable that you have installed first
        * If you get errors that the 64-bit compilers are not installed you may also need the [compiler update for the Windows SDK 7.1]
    * Windows 7/8:
      * Microsoft Visual Studio C++ 2013 for Windows Desktop ([Express][msvc2013] version works well)
    * Windows 10:
        * Install the latest version of npm (3.3.6 at the time of writing)
        * Install Python 2.7 from https://www.python.org/download/releases/2.7/ and make sure its on the System Path
        * Install Visual Studio Community 2015 Edition. (Custom Install, Select Visual C++ during the installation)
        * Set the environment variable GYP_MSVS_VERSION=2015
        * Run the command prompt as Administrator
        * $ npm install (--msvs_version=2015) <-- Shouldn't be needed if you have set GYP_MSVS_VERSION env
        * If the above steps have not worked or you are unsure please visit http://www.serverpals.com/blog/building-using-node-gyp-with-visual-studio-express-2015-on-windows-10-pro-x64 for a full walkthrough
    * All Windows Versions
      * For 64-bit builds of node and native modules you will _**also**_ need the [Windows 7 64-bit SDK][win7sdk]
      * You may need to run one of the following commands if your build complains about WindowsSDKDir not being set, and you are sure you have already installed the SDK:
```

安装VS2013之后，配置好环境变量，清空一下:`C:\Users\15050107\.node-gyp`目录下东西。

## 参考资料
- [node-gyp](https://github.com/nodejs/node-gyp)
- [node-gyp build error windows x64](http://stackoverflow.com/questions/21562038/node-gyp-build-error-windows-x64)

## node-sass
淘宝将node-sass也镜像了，可以参考: [node-sass淘宝镜像](https://npm.taobao.org/mirrors)， 使用的时候，可能要确保npm或cnpm连接上代理。

或者，手动安装， [node-sass 安装失败解决方案](https://github.com/luqin/blog/issues/9)，或见附件图片。

#  phantomjs
安装这个，会从 github 上下载一个zip包。 这个可能由于网络问题导致失败。

解决方案：
- 使用淘宝镜像， [phantomjs](https://npm.taobao.org/mirrors/phantomjs)
- 手动下载对应的`zip`包，放置在 ` ~\AppData\Local\Temp\phantomjs`目录下，再次安装



# imagemin
- [imagemin](https://github.com/imagemin)

## imagemin/optipng-bin
- [imagemin/optipng-bin](https://github.com/imagemin/optipng-bin)


## imagemin-pngquant