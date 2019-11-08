" 去除VI一致性 必须
set nocompatible

" 启动文件类型插件
filetype plugin on
" 文件缩进
filetype indent on

" 设置文件被其他编辑器改动自动加载
set autoread

" 语法高亮
syntax on
" 配色主题
colorscheme dracula

" 显示行号
set number
" 显示相对行号
set relativenumber

" 高亮当前行
set cursorline

" 设置字体
set guifont=Monaco:h16

" 设置 leader 键
let mapleader = "\<space>"

" 快速保存
nmap <leader>w :w!<cr>

" 搜索时忽略大小写
set ignorecase
" 搜索时尝试使用 smartcase
set smartcase
" 高亮搜索结果
set hlsearch

" 允许折叠
set foldenable
" 设置语法折叠
set foldmethod=syntax
" 设置折叠区域的宽度
set foldcolumn=0
" 设置折叠层数为
setlocal foldlevel=1
" 打开文件是默认不折叠代码
set foldlevelstart=99

" @插件管理器
" 使用 vim-plug安装插件
call plug#begin('~/.vim/plugged')

" 请将安装插件的命令放在plug#begin和plug#end之间.

" 插件列表
" 来源于Github上的插件
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'yggdroot/indentline'
Plug 'plasticboy/vim-markdown'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'brooth/far.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" 你的所有插件需要在下面这行之前 必须
call plug#end()

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

" @easymotion
nmap leader leader s <Plug>(easymotion-s2)

" @coc.nvim

"map jj/jk to ESC.
inoremap jj <c-[>
inoremap jk <c-[>
inoremap j<Space>     j
cnoremap j<Space>     j

" 映射 ctrl+h/j/k/l 来切换窗口
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l