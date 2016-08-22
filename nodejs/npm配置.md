## 查看配置
`npm config get xxx`命令，查看`xxx`具体配置。

## 设置代理
```
npm config set proxy http://proxy.company.com:8080
npm config set https-proxy http://proxy.company.com:8080
```

一个没搞定的点，为什么https-proxy设置的服务器是http而不是https的。

## 显示日志
`npm install`安装时候，显示信息的话，可通过`npm install --loglevel http xxx`形式

或者在`.npmrc`中添加:

```
logLevel = http
```

## 解决npm访问慢的问题
- [cnpm](https://npm.taobao.org/)
- [smart-npm](https://github.com/qiu8310/smart-npm/)