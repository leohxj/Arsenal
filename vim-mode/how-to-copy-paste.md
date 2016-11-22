# vim下复制与粘贴

- yank: `y` 打头的一些命令，比如 `yy` 复制整行。
- visual mode: `v` 进入 visual mode 后，可以移动光标选取内容。按 `y` 即可复制。`x` 或 `d` 即可裁切。
- paster: `p`, 就是粘贴的意思。

# vim 寄存器

默认情况下 vim 是使用自己的寄存器对剪切记录作存储，与系统剪切板想独立。通过 `:help registers` 即可查看相关文档。而在使用中，可以通过 `:reg` 查看当前寄存器存储情况。

vim 具有9种寄存器：

- 无名（unnamed）寄存器：""，缓存最后一次操作内容；
- 数字（numbered）寄存器："0 ～"9，缓存最近操作内容，复制与删除有别, "0寄存器缓存最近一次复制的内容，"1-"9缓存最近9次删除内容
- 行内删除（small delete）寄存器："-，缓存行内删除内容；
- 具名（named）寄存器："a ～ "z或"A - "0Z，指定时可用；
- 只读（read-only）寄存器：":,".,"%,"#，分别缓存最近命令、最近插入文本、当前文件名、当前交替文件名；
- 表达式（expression）寄存器："=，只读，用于执行表达式命令；
- 选择及拖拽（selection and drop）寄存器："*,"+,"~，存取GUI选择文本，可用于与外部应用交互，使用前提为系统剪切板（clipboard）可用；
- 黑洞（black hole）寄存器："_，不缓存操作内容（干净删除）；
- 模式寄存器（last search pattern）："/，缓存最近的搜索模式。

注意其中，**第七个**即系统的剪切板记录。

# 解决方案

## `"+` 命令方式

vim 下如果系统粘贴系统剪切板的内容，使用命令 `"+p` 替代 `p`。 裁切或者复制的时候，也是一样加上前缀 `"+` 或 `"*`。（这两个寄存器在大部分系统下是同系统剪切板的）

## `Insert` 方式

- `Ctrl+Insert`: 调用系统粘贴
- `Shift+Insert`: 调用系统复制

这种方式在某些小新键盘上找不到 `insert` 按键，就很尴尬了。所以使用频率最低。

## `set clipboard=unnamed` 方式

这个是最直接的方式， 在 `~/.vimrc` 就是配置文件里，加上 `set clipboard=unnamed` ，使得其启动时自动执行。

## 如何使得 vim 的相关删除或者裁剪命令不复制到寄存器中

如上设置之后，在 vim 中关于字符的裁切，删除，也被存入了默认寄存器中，这样当我们想要在 vim 中删除一段，并且用系统剪切板内容粘贴的时候，就会被删除的覆盖。解决的方法：`Use the "black hole register", "_ to really delete something: "_d`

使用`_`寄存器指令。

# 各个软件下的具体设置

## spacemacs

貌似都可以直接读取系统剪切板，我也就安装了基本的 layer。没有对这个特殊处理。

## JetBrains 的 IDE

使用的插件为 [ideavim](https://github.com/JetBrains/ideavim), 功能还是很强大的，会和 IDE 自身的快捷键有些冲突。我会将 `Ctrl+A/E/F/B/N/P` 保留作为光标快速移动方式。

ideavim 默认使用的是 vim 自己的寄存器，所以我们要创建一个 `~/.ideavimrc`, 将 `set clipboard=unnamed` 填入重启即可。

## Atom

使用的插件为 [vim-mode-plus](https://atom.io/packages/vim-mode-plus), 在其设置项中，有一个选项可以控制是否使用系统剪切板。

## 参考

- [How to delete (not cut) in Vim?](http://stackoverflow.com/questions/11993851/how-to-delete-not-cut-in-vim#11993928)
