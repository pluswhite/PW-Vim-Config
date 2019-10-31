" 去除VI一致性 必须
set nocompatible
" 必须
filetype on
syntax on
" 设置字体
set guifont=Monaco\ LG\ S\ Regular\ for\ Powerline:h16

" @vundle 插件管理器
" 使用 vundle 安装插件
" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 另一种选择, 指定一个vundle安装插件的路径
"call vundle#begin('~/some/path/here')

" 让vundle管理插件版本 必须
Plugin 'VundleVim/Vundle.vim'

" 请将安装插件的命令放在vundle#begin和vundle#end之间.

" Github上的插件
Plugin 'dracula/vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'yggdroot/indentline'
Plugin 'plasticboy/vim-markdown'
Plugin 'scrooloose/nerdtree.git'
Plugin 'ctrlpvim/ctrlp.vim'

" 你的所有插件需要在下面这行之前 必须
call vundle#end()
" 加载vim自带和插件相应的语法和文件类型相关脚本 必须
filetype plugin indent on
" 忽视插件改变缩进,可以使用以下替代:
"filetype plugin on

" 将你自己对非插件片段放在这行之后
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" @airline
" 在windows中用xshell连接打开vim可以显示色彩
set t_Co=256
" 是否打开tabline
let g:airline#extensions#tabline#enabled = 1
" 这个是安装字体后 必须设置此项"
" let g:airline_powerline_fonts = 1
" 永远显示状态栏
set laststatus=2
" 选择主题
let g:airline_theme='dracula'
" Smarter tab line: 显示窗口tab和buffer
let g:airline#extensions#tabline#enabled=1
" let g:airline#extensions#tabline#left_sep = ' '  "separater
" let g:airline#extensions#tabline#left_alt_sep = '|'  "separater
" let g:airline#extensions#tabline#formatter = 'default'  "formater
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'

" @ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" @indentline
let g:indentLine_setColors = 0
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

"map jj/jk to ESC.
inoremap jj <c-[>
inoremap jk <c-[>
cnoremap <expr> j
      \ getcmdline()[getcmdpos()-2] ==# 'j' ? "\<BS>\<C-c>" : 'j'

inoremap j<Space>     j
cnoremap j<Space>     j


