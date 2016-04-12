# macvim

个人用于 MacVim 的配置，基于 [humiaozuzu/dot-vimrc](https://github.com/humiaozuzu/dot-vimrc) 修改。

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

### 安装 Vundle 管理插件的插件 🤔

`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

### 安装插件，比较耗时 ☕️

`mvim -c VundleUpdate -c quitall`

## 插件列表

### vundle:
[http://github.com/VundleVim/Vundle.vim]()

管理插件的插件

### neocomplete:
[http://github.com/Shougo/neocomplete]()

### emmet-vim:
[http://github.com/mattn/emmet-vim]()

[Emmet (formerly Zen Coding)](http://emmet.io/)

### auto-pairs:
[https://github.com/jiangmiao/auto-pairs]()

自动补全圆括号、花括号、引号，类似 delimitMate

### supertab
通过 <Tab> 插入自动完成

### ultisnips
代码片断引擎，类似 vim-snipmate

### vim-snippets
包含多种编程语言的代码片断文件，支持多种代码片断引擎

### vim-matchit
使 % 能进行非单字符的匹配

### vim-easymotion
快速跳转到对应位置

### incsearch
### incsearch-fuzzy
### incsearch-easymotion


