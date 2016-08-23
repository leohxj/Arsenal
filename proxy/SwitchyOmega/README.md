[SwitchyOmega](https://github.com/FelisCatus/SwitchyOmega): Chrome的一个扩展插件，提供代理管理和切换功能。

# Install
- [Chrome Web Store](https://chrome.google.com/webstore/detail/proxy-switchyomega/padekgcemlokbadohgkifijomclgjgif): 需要能正常访问google的网络环境下
- [Release](https://github.com/FelisCatus/SwitchyOmega/releases): crx安装包，安装说明页面有

# New profile
chrome右上角单击插件`SwitchyOmega -> Options` 进入插件选项页面。 右侧选择 `New profile...`, 可添加一个新的profile。通常我们选择`Proxy Profile`，配置对应的代理服务器。

这样，我们在`SwitchyOmega`上就可以选择对应的`Proxy Profile`了，所访问的页面就走我们对应设置的代理。

## Proxy servers
这个选项中填写我们对应的代理服务器，比如我们本地开启了 `shadowsocks`, 端口为`1080`,我们可以选择 `default socks5 127.0.0.1 1080`。

## Bypass List
过滤列表，指定哪些不走代理，我们可以这样填写:

```
<local>
10.*
127.*
*.suning.com
*.cnsuning.com
localhost
*.local
*.suning.cn
```

# Auto Switch
在`New Profiles...`中，我们还可以添加一个 `Switch Profile`, 用来根据不同的规则，选择不同的代理服务器。

## Switch rules
这里配置规则列表，指定符合规则的，走哪些`Proxy Profile`，注意其中两个配置:
- `Rule list rules`: 符合下面 `Rule List Config`配置的规则走的代理
- `Default`: 其他情况，默认的代理规则

### Edit source code
规则列表可以使用文本编辑，点击`Edit source code` 即可编辑，方便我们批量添加和排序。

## Rule List Config
选择`AutoProxy`, `Rule List URL` 填写 `https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt`。

## Rule List Text
根据上面配置的`Rule List URL`生成的文件内容展示。

# 备份
`Import/Export -> Make backup`, 会在本地生成一个`.bak`文件，用于下次恢复使用。

# 恢复
`Import/Export -> Restore from file`, 选择对应的`.bak`文件，恢复相关设置。