[json-server](https://github.com/typicode/json-server): 用于本地模拟数据的工具。

## 使用简介
通过 `npm i -g json-server` 安装为全局依赖的模块。后续可以命令行下使用 `json-server` 命令。

接下来，我们需要设置一个 `db.json`, 以 `json` 格式配置我们的本地数据：

```
{
  "posts": [
    { "id": 1, "title": "json-server", "author": "typicode" }
  ],
  "comments": [
    { "id": 1, "body": "some comment", "postId": 1 }
  ],
  "profile": { "name": "typicode" }
}
```

通过 `json-server --watch db.json` 启动后，本地就会开启一个 3000(默认端口)，我们访问 `http://localhost:3000/posts/` 既可获取数据：`{ "id": 1, "title": "json-server", "author": "typicode" }`, 工具自身支持 CORS 和 JSONP 跨域方式。


## 请求实例
针对 MVS 项目，我们可以通过 Fiddler 将线上的请求地址隐射为本地模拟数据的服务地址，设置相应的映射规则：

```
<?xml version="1.0" encoding="utf-8"?>
<AutoResponder LastSave="2016-12-29T14:51:25.7255177+08:00" FiddlerVersion="4.6.3.44034">
  <State Enabled="true" Fallthrough="true" UseLatency="true">
    <ResponseRule Match="regex:^(http|https)://shoppingpre.cnsuning.com/app/cart1/gateway/showTempCartInfo.do" Action="http://localhost:3002/cart1show" Enabled="true" />
  </State>
</AutoResponder>
```


## 同域JSON请求
数据文件, `ajax-json.json`:

```
{
    "cart1show": {}
}
```

运行 `json-server --watch ajax-json.json` 即可通过 `localhost:3002/cart1show` 访问本地数据。

## JSONP
数据文件, `ajax-jsonp.json`:

```
{
    "labs": []
}
```

运行 `json-server --watch ajax-jsonp.json` 即可通过 `localhost:3002/labs`。

注意: 数据中不需要设置 JSONP 的回调函数名称。


### CORS
数据文件, `ajax-cors.json`:

```
{
    "orderList": []
}
```

运行 `json-server --watch ajax-cors.json` 即可通过 `localhost:3002/orderList`。


## 配置简介
- watch: 监听本地数据文件变化，自动更新。

我们可以维护一个 `json-server.json` 文件，来写入默认配置，比如:

```
{
    "port": 3002,
    "watch": true
}
```



## 总结
这样，我们即可在本地通过文件模拟数据了 :)



