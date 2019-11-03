" 去除VI一致性 必须
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

" 高亮当前行
set cursorline

" 设置字体
set guifont=Monaco\ LG\ S\ Regular\ for\ Powerline:h16

" 设置左侧滚动条隐藏
set guioptions-=L 

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
" 手动折叠
set foldmethod=manual

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
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'yggdroot/indentline'
Plugin 'plasticboy/vim-markdown'
Plugin 'scrooloose/nerdtree.git'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'easymotion/vim-easymotion'

" 你的所有插件需要在下面这行之前 必须
call vundle#end()

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

"map jj/jk to ESC.
inoremap jj <c-[>
inoremap jk <c-[>
inoremap j<Space>     j
cnoremap j<Space>     j



