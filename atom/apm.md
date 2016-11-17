apm, Atom Package Manager。用来安装和管理 Atom 相关插件。

> You can configure apm by using the apm config command line option (recommended) or by manually editing the `~/.atom/.apmrc` file as per the npm config.


## 查看配置
`apm config list` 查看当前 `apm` 配置。


## proxy设置
通过 `apm config get http-proxy` 或 `apm config get https-proxy` 可查看目前设置的代理。

通过 `apm config set http-proxy https://9.0.2.1:0` 或 `apm config set https-proxy https://9.0.2.1:0` 设置。



## 手动安装插件
插件最终下载到的目录是`~/.atom/packages`中，所以我们也可以下载对应的插件，防止到此目录下。

