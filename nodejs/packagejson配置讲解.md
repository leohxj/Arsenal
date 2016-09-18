## 版本号设置
这是 `package.json` 中最主要的设置，指定我们依赖模块的版本。它需要能被 [node-semver](https://github.com/npm/node-semver) 解析。它是符合 [语义化版本](http://semver.org/lang/zh-CN/) 的。常见的几种写法有:

- **comparator**: 比较符号, 符号为 `<`, `<=`, `=`, `>`, `>=`
- **Hyphen Ranges**: 区间范围，符号为 `-`, 比如:
        -  `1.2.3 - 2.3.4 := >=1.2.3 <=2.3.4`
- **X-Ranges**: 整体范围, 符号为 `x,X,*`, 比如:
        - `* := >=0.0.0`
        - `1.x := >=1.0.0 <2.0.0`
        - `1.2.x := >=1.2.0 <1.3.0`
        - `"" (empty string) := * := >=0.0.0`
        - `1 := 1.x.x := >=1.0.0 <2.0.0`
        - `1.2 := 1.2.x := >=1.2.0 <1.3.0`
- **Tilde Ranges**: 版本范围，符号为 `~`, 比如:
        - `~1.2.3 := >=1.2.3 <1.(2+1).0 := >=1.2.3 <1.3.0`
        - `~1.2 := >=1.2.0 <1.(2+1).0 := >=1.2.0 <1.3.0 (Same as 1.2.x)`
        - `~1 := >=1.0.0 <(1+1).0.0 := >=1.0.0 <2.0.0 (Same as 1.x)`
        - `~0.2.3 := >=0.2.3 <0.(2+1).0 := >=0.2.3 <0.3.0`
        - `~0.2 := >=0.2.0 <0.(2+1).0 := >=0.2.0 <0.3.0 (Same as 0.2.x)`
        - `~0 := >=0.0.0 <(0+1).0.0 := >=0.0.0 <1.0.0 (Same as 0.x)`
        - `~1.2.3-beta.2 := >=1.2.3-beta.2 <1.3.0`
- **Caret Ranges**: 最低范围，符号为 `^`, 比如:
        - `^1.2.3 := >=1.2.3 <2.0.0`
        - `^0.2.3 := >=0.2.3 <0.3.0`
        - `^0.0.3 := >=0.0.3 <0.0.4`
        - `^1.2.x := >=1.2.0 <2.0.0`
        - `^0.0.x := >=0.0.0 <0.1.0`
        - `^0.0 := >=0.0.0 <0.1.0`
        - `^1.x := >=1.0.0 <2.0.0`
        - `^0.x := >=0.0.0 <1.0.0`


# dependencies区别
## dependencies
依赖关系，组件所需要的, 使用`npm install --save` 或 `npm i -S`

## devDependencies
使用`npm install --save-dev` 或者 `npm i -D`, 开发过程所需要的，外部使用者不用关心的组件。比如单元测试，预编译处理

## 参考
- [What's the difference between dependencies, devDependencies and peerDependencies in npm package.json file?](http://stackoverflow.com/questions/18875674/whats-the-difference-between-dependencies-devdependencies-and-peerdependencies)
- [npm: dependencies and devDependencies](http://zhiye.li/2014-06-23-npm-dependencies-and-devDependencies.html)


## 参考
- [JSON.is](http://json.is/): 详细解释package.json每条信息