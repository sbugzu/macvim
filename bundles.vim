"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
"set runtimepath^=/Users/vincent/.vim/.cache/repos/github.com/Shougo/dein.vim
set runtimepath^=/Users/vincent/.vim/bundle/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('/Users/vincent/.vim/bundle'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
" call dein#add('Shougo/neosnippet.vim')
" call dein#add('Shougo/neosnippet-snippets')

"------------------
" Code Completions
"------------------
call dein#add('Shougo/neocomplete')
call dein#add('mattn/emmet-vim')
call dein#add('jiangmiao/auto-pairs')
call dein#add('ervandew/supertab')
" snippets
call dein#add('SirVer/ultisnips')
call dein#add('honza/vim-snippets')

"-----------------
" Fast navigation
"-----------------
call dein#add('edsono/vim-matchit')
call dein#add('easymotion/vim-easymotion')
call dein#add('haya14busa/incsearch.vim')
call dein#add('haya14busa/incsearch-fuzzy.vim')
call dein#add('haya14busa/incsearch-easymotion.vim')

"--------------
" Fast editing
"--------------
call dein#add('tpope/vim-surround')
call dein#add('scrooloose/nerdcommenter')
call dein#add('sjl/gundo.vim')
call dein#add('godlygeek/tabular')
call dein#add('nathanaelkane/vim-indent-guides')
call dein#add('vim-scripts/argtextobj.vim')
"'bkad/CamelCaseMotion'
"'terryma/vim-multiple-cursors'


"--------------
" IDE features
"--------------
call dein#add('scrooloose/nerdtree')
call dein#add('majutsushi/tagbar')
call dein#add('mileszs/ack.vim')
call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('tpope/vim-fugitive')
call dein#add('vim-airline/vim-airline')
call dein#add('scrooloose/syntastic')
call dein#add('bronson/vim-trailing-whitespace')
call dein#add('fholgado/minibufexpl.vim')
call dein#add('maksimr/vim-jsbeautify')
"'humiaozuzu/TabBar'

"-------------
" Other Utils
"-------------
call dein#add('nvie/vim-togglemouse')
"'humiaozuzu/fcitx-status'

"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------
"------- web backend ---------
"'2072/PHP-Indenting-for-VIm'
"'tpope/vim-rails'
"'lepture/vim-jinja'
call dein#add('digitaltoad/vim-jade')

"------- web frontend ----------
call dein#add('othree/html5.vim')
call dein#add('pangloss/vim-javascript')
call dein#add('kchmck/vim-coffee-script')
call dein#add('nono/jquery.vim')
call dein#add('groenewege/vim-less')
" 'wavded/vim-stylus'
" 'nono/vim-handlebars'
" 'tpope/vim-haml'

"------- markup language -------
"'tpope/vim-markdown'
"'timcharper/textile.vim'

"------- Ruby --------
"'tpope/vim-endwise'

"------- Go ----------
call dein#add('fatih/vim-go')

"------- FPs ------
call dein#add('luochen1990/rainbow')
" 'wlangstroth/vim-racket'
" 'vim-scripts/VimClojure'
" 'rosstimson/scala-vim-support'

"------- Recat ------
call dein#add('mxw/vim-jsx')

"--------------
" Color Schemes
"--------------
call dein#add('rickharris/vim-blackboard')
call dein#add('altercation/vim-colors-solarized')
call dein#add('rickharris/vim-monokai')
call dein#add('tpope/vim-vividchalk')
call dein#add('Lokaltog/vim-distinguished')
call dein#add('chriskempson/vim-tomorrow-theme')
call dein#add('fisadev/fisa-vim-colorscheme')

"------ Airline ------
call dein#add('vim-airline/vim-airline-themes')

" You can specify revision/branch/tag.
" call dein#add('Shougo/vimshell', { 'rev': '3787e5'  })

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------"

