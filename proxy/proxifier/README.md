## 安装
下载可执行的安装包，直接双击安装即可。我将软件安装到了`D:\Program Files(x86)\Proxifier`目录中。

另外，官方提供了一个免安装版本，使用应该和其他绿色软件一样，解压缩即可。

## 激活
激活码见`key.md`文件，相同大版本，激活一次，后续不需要再激活。放心更新。



## 配置文件
文件存在`~/AppData\Roaming\Proxifier\Profiles`目录下。

## 使用方式
### 添加代理服务器
内网环境下，添加可访问外网的服务器地址，通过 `Profile -> Proxy Servers`菜单添加，添加完成，可以点击右侧的`check..`进行连通性测试。

### 设置代理规则
通过 `Profile -> Proxification Rules`菜单添加, 规则优先级从上到下。

同一个规则内，包含三个选项:
- Applications: 捕获的应用名称，比如 `shadowsocks.exe`
- Target Hosts: 符合的域名规则
- Target Ports: 符合的端口号

注意，这三个是相互的关系，比如配置了`shadowsocks.exe`，又配置了`*.baidu.com`，那么只有通过`shadowsocks.exe`访问`*.baidu.com`的才符合这条规则。

所以，我们需要需要针对域名设置，请单独建立一条规则。



## Tips
- 命令行下的一些命令，不是走的`cmd.exe`, 比如`node`，实际走的是`node.exe`,所以我们需要添加 `node.exe`到规则之中。
- 代理规则，一般前面先设置内网相关的，讲它们直接走`direct`(系统代理); 最后的`Default`默认也设置为`Direct`， 方便放行其他，中间的配置，根据我们的实际情况自行添加。

