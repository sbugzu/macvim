# macvim

个人用于 MacVim 的配置，基于 [humiaozuzu/dot-vimrc](https://github.com/humiaozuzu/dot-vimrc) 进行大量的修改。

该配置的插件主要偏重于 HTML5、NodeJS、React 等, 由于未在 Mac 以外的其它系统进行测试无法保证所有功能都正常运行。

![MacVim screenshot1](https://raw.githubusercontent.com/sbugzu/macvim/master/screenshots/screenshot1.png)
![MacVim screenshot2](https://raw.githubusercontent.com/sbugzu/macvim/master/screenshots/screenshot2.png)

## 安装准备

### 安装 MacVim

由于部分插件需要 lua 支持，未安装过 MacVim 可以使用以下命令进行安装：

`brew install macvim --with-cscope --with-lua --override-system-vim`

如果已安装 MacVim 使用命令查看是否支持 lua `:echo has('lua')` 返回为 `0` 需要 unlink 后用新装方式重新进行安装；返回为 `1` 则可直接执行以下的安装步骤。

### 安装依赖

安装 [tagbar](#plu_tagbar) 插件的依赖 `ctags`

` brew install ctags `

### 可选安装

安装 [the_silver_searcher](https://github.com/ggreer/the_silver_searcher)，类似 `ack` 的代码搜索工具，但是速度更快

` brew install the_silver_searcher `

安装 [syntastic](#plu_syntastic) 语法检查工具

```
npm  install  -g  jsonlint      #  Json
npm  install  -g  csslint       #  CSS
npm  install  -g  eslint        #  Javascript
npm  install  -g  babel-eslint  #  ES6
npm  install  -g  eslint-plugin-react # react
sudo pip install pyflakes       #  Python
```

为了在使用 [eslint](http://eslint.org/) 时能支持 ES6 语法和 JSX，可在项目根目录或者 `~` 路径下增加 `.eslintrc` 的文件并写入以下内容，具体的规则设置可参考 [Rule](http://eslint.org/docs/rules/)：

```
{
  "parser": "babel-eslint",
  "env": {
      "browser": true,
      "node": true
  },
  "settings": {
      "ecmascript": 6,
      "jsx": true
  },
    "extends": "eslint:recommended",
    "plugins": [
        "react"
    ],
    "rules": {
        "strict":                "warn",
        "no-unused-vars":        0,
        "camelcase":             "warn",
        "no-underscore-dangle":  "warn"
    }
}
```

## 安装

### 备份设置

```
cd ~
mv .vimrc .vimrc.orig
mv .vim .vim.orig
```

### 下载配置

```
cd ~
git clone https://github.com/sbugzu/macvim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
```

### 安装 vim-plug 管理插件的插件

参考：[junegunn/vim-plug](https://github.com/junegunn/vim-plug)

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### 安装插件（依赖网络环境，会比较耗时 :coffee:）

`mvim -c PlugInstall -c quitall`

以后可通过以下命令更新插件

`mvim -c PlugUpdate -c quitall`

## 插件列表

### vim-plug
https://github.com/junegunn/vim-plug

管理插件的插件

### neocomplete:
http://github.com/Shougo/neocomplete

提供自动补全功能

### emmet-vim:
http://github.com/mattn/emmet-vim

快速的编写 HTML 代码，参考：[Emmet (formerly Zen Coding)](http://emmet.io/)

### auto-pairs:
https://github.com/jiangmiao/auto-pairs

自动补全圆括号、花括号、引号，类似 delimitMate

### supertab
https://github.com/ervandew/supertab

通过 `Tab` 插入自动完成

### ultisnips
https://github.com/SirVer/ultisnips

代码片断引擎，类似 vim-snipmate

### vim-snippets
https://github.com/honza/vim-snippets

包含多种编程语言的代码片断文件，支持多种代码片断引擎

### vim-matchit
https://github.com/edsono/vim-matchit

使 `%` 能进行非单字符的匹配

### vim-easymotion [⌨](#key_vim-easymotion)
https://github.com/easymotion/vim-easymotion

通过快捷键快速跳转到对应位置

### incsearch [⌨](#key_vim-easymotion)
https://github.com/haya14busa/incsearch.vim
### incsearch-fuzzy [⌨](#key_vim-easymotion)
https://github.com/haya14busa/incsearch-fuzzy.vim
### incsearch-easymotion [⌨](#key_vim-easymotion)
https://github.com/haya14busa/incsearch-easymotion.vim

增强文件搜索功能，包含模糊查询及与 easymotion 整合
![incsearch screenshot](https://raw.githubusercontent.com/haya14busa/i/master/incsearch.vim/extensions/incsearch-fuzzy.gif)

### vim-surround
https://github.com/tpope/vim-surround

处理成对的包围符号，如括号、引号、XML 标签等

#### 使用

` "Hello world!" `

使用 `cs"'` 替换双引号为单引号

` 'Hello world!' `

使用 `cs'<p>` 替换单引号为 p 标签

` <p>Hello world!</p> `

使用 `cst"` 替换回双引号

` "Hello world!" `

使用 `ds"` 删除双引号

` Hello world! `

如果现在光标在「Hello」上，使用 `ysiw]` 后

` [Hello] world! `

为大括号增加空格（使用 `}` 代替 `{` 将没有空格）：`cs]{`

` { Hello } world! `

使用 `yssb` 或者 `yss)` 在外面加一层圆括号

` ({ Hello } world!)`

恢复原始文本: `ds{ds)`

` Hello World! `

强调「Hello」`ysiw<em>`

` <em>Hello</em> world!`

最后尝试 visual 模式, 使用大写的 V 紧接着 `S<p class="important">`

```
<p class="important">
    <em>Hello</em> world!
</p>
```


### nerdcommenter
https://github.com/scrooloose/nerdcommenter

强大的注释插件

> [count]<leader>cc |NERDComComment|
> Comment out the current line or text selected in visual mode.
>
> [count]<leader>cn |NERDComNestedComment|
> Same as <leader>cc but forces nesting.
>
> [count]<leader>c<space> |NERDComToggleComment|
> Toggles the comment state of the selected line(s). If the topmost selected line is commented, all selected lines are uncommented and vice versa.
>
> [count]<leader>cm |NERDComMinimalComment|
> Comments the given lines using only one set of multipart delimiters.
>
> [count]<leader>ci |NERDComInvertComment|
> Toggles the comment state of the selected line(s) individually.
>
> [count]<leader>cs |NERDComSexyComment|
> Comments out the selected lines ``sexily''
>
> [count]<leader>cy |NERDComYankComment|
> Same as <leader>cc except that the commented line(s) are yanked first.
>
> <leader>c$ |NERDComEOLComment|
> Comments the current line from the cursor to the end of line.
>
> <leader>cA |NERDComAppendComment|
> Adds comment delimiters to the end of line and goes into insert mode between them.
>
> |NERDComInsertComment|
> Adds comment delimiters at the current cursor position and inserts between. Disabled by default.
>
> <leader>ca |NERDComAltDelim|
> Switches to the alternative set of delimiters.
>
> [count]<leader>cl
> [count]<leader>cb |NERDComAlignedComment|
> Same as |NERDComComment| except that the delimiters are aligned down the left side (<leader>cl) or both sides (<leader>cb).
>
> [count]<leader>cu |NERDComUncommentLine|
> Uncomments the selected line(s).


### gundo
http://github.com/sjl/gundo.vim

可视化的撤消树


### tabular [⌨](#key_tabular)
https://github.com/godlygeek/tabular

通过冒号、分号、空格等进行格式化。

### vim-indent-guides
https://github.com/nathanaelkane/vim-indent-guides

提供更好的缩进格式化效果

![vim-indent-guides screenshot](https://camo.githubusercontent.com/2bc9669a79de6da7eca9e3f3efdf2d4b891dd7c5/687474703a2f2f692e696d6775722e636f6d2f457672714b2e706e67)

### argtextobj.vim
https://github.com/vim-scripts/argtextobj.vim

除自带的 `w s p '' "" <> [] () {} t` 以外提供 `a` 标识参数文本对象

`function foo ( abc, ef*g, hij ) { //do something }`

使用 `daa` 后变为

`function foo ( abc, hij ) { //do something }`

同样的对于以下常用的编辑命令也适用

` y d c v`

### repeat
https://github.com/tpope/vim-repeat

使 `.` 可重复一个插件操作


### wildfire
https://github.com/gcmt/wildfire.vim

快速选择文本对象

### nerdtree
https://github.com/scrooloose/nerdtree

提供可视化的文件树并集成进行一些简单的文件系统操作。

### nerdtree-git-plugin
https://github.com/Xuyuanp/nerdtree-git-plugin

在 nerdtree 上显示 git 状态


<a name="plu_tagbar"></a>
### tagbar
https://github.com/majutsushi/tagbar

通过 [ctags](http://ctags.sourceforge.net/) 获取当前文件的结构，但只会加载到内存中，不会生成 tags 文件也不具备管理 tags 文件的功能。如果需要管理 tags 文件可以尝试 [vim-easytags](https://github.com/xolox/vim-easytags)。


### ack.vim
https://github.com/mileszs/ack.vim

高效、强大的代码搜索工具，参考：[ack](http://beyondgrep.com/) [Ag](https://github.com/ggreer/the_silver_searcher)


### ctrlp.vim
https://github.com/ctrlpvim/ctrlp.vim

模糊查询 file, buffer, mru, tag ...

![ctrlp screenshot](https://camo.githubusercontent.com/0a0b4c0d24a44d381cbad420ecb285abc2aaa4cb/687474703a2f2f692e696d6775722e636f6d2f7949796e722e706e67)


### vim-fugitive
https://github.com/tpope/vim-fugitive

直接引用作者的原话：

> I'm not going to lie to you; fugitive.vim may very well be the best Git wrapper of all time.


### vim-airline
https://github.com/vim-airline/vim-airline

作用直接看图吧：

![vim-airline screenshot](https://github.com/vim-airline/vim-airline/wiki/screenshots/demo.gif)


<a name="plu_syntastic"></a>
### syntastic
https://github.com/scrooloose/syntastic

强大的语法检查插件


### vim-trailing-whitespace
https://github.com/bronson/vim-trailing-whitespace

以红色高亮显示结尾不必要的空格


### minibufexpl.vim [key](#key_minibufexpl)
https://github.com/fholgado/minibufexpl.vim

在屏幕顶部或者底部列出打开的所有 Buffer

### vim-jsbeautify [key](#key_vim-jsbeautify)
https://github.com/maksimr/vim-jsbeautify

格式化 JS、JSON、HTML 等文件，可单独针对文件格式进行设置 [.editorconfig](https://github.com/sbugzu/macvim/blob/master/.editorconfig)

### vim-togglemouse [key](#key_vim-togglemouse)
https://github.com/nvie/vim-togglemouse

在 Vim 和 Terminal 间切换鼠标


### rainbow
https://github.com/luochen1990/rainbow

以彩虹色显示括号，类似 [rainbow_parentheses.vim](https://github.com/kien/rainbow_parentheses.vim)

![rainbow screenshot](https://raw.githubusercontent.com/luochen1990/rainbow/demo/lisp.png)


### accelerated-smooth-scroll
https://github.com/yonchu/accelerated-smooth-scroll

平滑滚动插件，有条件的同学可以看下效果视频 [Youtube](http://www.youtube.com/watch?v=mGMgAiS8Xtg)


### 其它文件语法及 VIM 样式（TBD）


## 快捷键

`<leader>` 定义为 `,`

| 快捷键             | 功能描述                        | 所属插件                                                      |
| ---                | ---                             | ---                                                           |
| `<C-j>`            | 代码展开快捷键                  | emmet-vim<a name="key_emmet-vim"></a>                         |
| `<leader>f`        | 单字母快速定位                  | vim-easymotion<a name="key_vim-easymotion"></a>               |
| `s`                | 双字母快速定位                  | vim-easymotion                                                |
| `<leader>L`        | 快速定位到行                    | vim-easymotion                                                |
| `<leader>w`        | 快速定位到单词                  | vim-easymotion                                                |
| `z/ z? zg?`        | 进行模糊搜索                    | vim-easymotion/incsearch/incsearch-fuzzy/incsearch-easymotion |
| `<leader>a=`       | 以 `=` 进行格式化               | tabular<a name="key_tabular"></a>                             |
| `<leader>a:`       | 以 `:` 进行格式化               | tabular                                                       |
| `<leader>a<space>` | 以 ` ` (空格)进行格式化         | tabular                                                       |
| `<C-p>`            | 打开 CtrlP                      | ctrlp                                                         |
| `<leader>0-9`      | 切换 0-9 的 Buffer              | minibufexpl <a name="key_minibufexpl"></a>                    |
| `<leader>010-0100` | 切换 10-100 的 Buffer           | minibufexpl                                                   |
| `<C-TAB>`          | 向后切换 Buffer                 | minibufexpl                                                   |
| `<C-S-TAB>`        | 向前切换 Buffer                 | minibufexpl                                                   |
| `<D-f>`            | 自动格式化文件                  | vim-jsbeautify <a href="" name="key_vim-jsbeautify"></a>      |
| `<F3>`             | 切换 Gundo                      |                                                               |
| `<F4>`             | 切换 IndentGuides               |                                                               |
| `<F5>`             | 切换 Tagbar                     |                                                               |
| `<F6>`             | 切换 NERDTree                   |                                                               |
| `<F12>`            | 使鼠标在 Vim 和 Terminal 间切换 | vim-togglemouse <a href="" name="key_vim-togglemouse"></a>    |
| `<leader>v`        | ``V`]``                         |                                                               |
| `<C-j>`            | 切换下方窗口                    |                                                               |
| `<C-k>`            | 切换上方窗口                    |                                                               |
| `<C-h>`            | 切换左侧窗口                    |                                                               |
| `<C-l>`            | 切换右侧窗口                    |                                                               |
| `<leader>ev`       | 编辑 .vimrc 文件                |                                                               |
| `<leader>sv`       | 重新加载 .vimrc 文件            |                                                               |
| `<D-]>`            | 增加缩进                        |                                                               |
| `<D-[>`            | 减小缩进                        |                                                               |
| `<D-/>`            | 等同于 `:` 切换模式             |                                                               |
| `;`                | 等同于 `:` 切换模式             |                                                               |

