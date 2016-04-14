set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/Vundle.vim'

"------------------
" Code Completions
"------------------
" Plugin 'Shougo/neocomplcache'
Plugin 'Shougo/neocomplete'
Plugin 'mattn/emmet-vim'
"Plugin 'Raimondi/delimitMate'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ervandew/supertab'
" snippets
" Plugin 'garbas/vim-snipmate'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
"------ snipmate dependencies -------
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'

"-----------------
" Fast navigation
"-----------------
Plugin 'edsono/vim-matchit'
"Plugin 'Lokaltog/vim-easymotion'
Plugin 'easymotion/vim-easymotion'
Plugin 'haya14busa/incsearch.vim'
Plugin 'haya14busa/incsearch-fuzzy.vim'
Plugin 'haya14busa/incsearch-easymotion.vim'

"--------------
" Fast editing
"--------------
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'sjl/gundo.vim'
Plugin 'godlygeek/tabular'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-scripts/argtextobj.vim'
"Plugin 'bkad/CamelCaseMotion'
"Plugin 'terryma/vim-multiple-cursors'


"--------------
" IDE features
"--------------
Plugin 'scrooloose/nerdtree'
"Plugin 'humiaozuzu/TabBar'
Plugin 'majutsushi/tagbar'
Plugin 'mileszs/ack.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
"Plugin 'Lokaltog/vim-powerline'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'maksimr/vim-jsbeautify'

"-------------
" Other Utils
"-------------
" Plugin 'humiaozuzu/fcitx-status'
Plugin 'nvie/vim-togglemouse'

"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------
"------- web backend ---------
"Plugin '2072/PHP-Indenting-for-VIm'
"Plugin 'tpope/vim-rails'
"Plugin 'lepture/vim-jinja'
Plugin 'digitaltoad/vim-jade'

"------- web frontend ----------
Plugin 'othree/html5.vim'
" Plugin 'tpope/vim-haml'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'nono/jquery.vim'
Plugin 'groenewege/vim-less'
" Plugin 'wavded/vim-stylus'
" Plugin 'nono/vim-handlebars'

"------- markup language -------
"Plugin 'tpope/vim-markdown'
" Plugin 'timcharper/textile.vim'

"------- Ruby --------
" Plugin 'tpope/vim-endwise'

"------- Go ----------
Plugin 'fatih/vim-go'

"------- FPs ------
" Plugin 'kien/rainbow_parentheses.vim'
Plugin 'luochen1990/rainbow'
" Plugin 'wlangstroth/vim-racket'
" Plugin 'vim-scripts/VimClojure'
" Plugin 'rosstimson/scala-vim-support'

"------- Recat ------
Plugin 'mxw/vim-jsx'

"--------------
" Color Schemes
"--------------
Plugin 'rickharris/vim-blackboard'
Plugin 'altercation/vim-colors-solarized'
Plugin 'rickharris/vim-monokai'
Plugin 'tpope/vim-vividchalk'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'fisadev/fisa-vim-colorscheme'

"------ Airline ------
Plugin 'vim-airline/vim-airline-themes'


call vundle#end()
filetype plugin indent on     " required!
