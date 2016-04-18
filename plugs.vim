call plug#begin('~/.vim/plugged')

"------------------
" Code Completions
"------------------
Plug 'Shougo/neocomplete'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'ervandew/supertab'
" snippets
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

"-----------------
" Fast navigation
"-----------------
Plug 'edsono/vim-matchit'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'haya14busa/incsearch-easymotion.vim'

"--------------
" Fast editing
"--------------
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'sjl/gundo.vim', {'on': 'GundoToggle'}
Plug 'godlygeek/tabular'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'vim-scripts/argtextobj.vim'
Plug 'tpope/vim-repeat'
Plug 'gcmt/wildfire.vim'
"'bkad/CamelCaseMotion'
"'terryma/vim-multiple-cursors'


"--------------
" IDE features
"--------------
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'majutsushi/tagbar'
Plug 'mileszs/ack.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/syntastic'
Plug 'bronson/vim-trailing-whitespace'
Plug 'fholgado/minibufexpl.vim'
Plug 'maksimr/vim-jsbeautify'
"'humiaozuzu/TabBar'

"-------------
" Other Utils
"-------------
Plug 'nvie/vim-togglemouse'
"'humiaozuzu/fcitx-status'

"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------
"------- web backend ---------
"'2072/PHP-Indenting-for-VIm'
"'tpope/vim-rails'
"'lepture/vim-jinja'
Plug 'digitaltoad/vim-jade'

"------- web frontend ----------
Plug 'othree/html5.vim', {'for': 'html'}
Plug 'pangloss/vim-javascript'
Plug 'kchmck/vim-coffee-script', {'for': 'coffee'}
Plug 'nono/jquery.vim'
Plug 'groenewege/vim-less', {'for': 'less'}
" 'wavded/vim-stylus'
" 'nono/vim-handlebars'
" 'tpope/vim-haml'

"------- markup language -------
"'tpope/vim-markdown'
"'timcharper/textile.vim'

"------- Ruby --------
"'tpope/vim-endwise'

"------- Go ----------
Plug 'fatih/vim-go', {'for': 'go'}

"------- FPs ------
Plug 'luochen1990/rainbow'
" 'wlangstroth/vim-racket'
" 'vim-scripts/VimClojure'
" 'rosstimson/scala-vim-support'

"------- Recat ------
Plug 'mxw/vim-jsx'

"--------------
" Appearance
"--------------
Plug 'yonchu/accelerated-smooth-scroll'

"--------------
" Color Schemes
"--------------
Plug 'rickharris/vim-blackboard'
Plug 'altercation/vim-colors-solarized'
Plug 'rickharris/vim-monokai'
Plug 'tpope/vim-vividchalk'
Plug 'Lokaltog/vim-distinguished'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'fisadev/fisa-vim-colorscheme'

"------ Airline ------
Plug 'vim-airline/vim-airline-themes'

" You can specify revision/branch/tag.
" call dein#add('Shougo/vimshell', { 'rev': '3787e5'  })

" Add plugins to &runtimepath
call plug#end()
