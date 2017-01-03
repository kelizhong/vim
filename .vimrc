set nocompatible              " be iMproved, required
let mapleader=","
" 关闭交换文件
set noswapfile"
" 括号配对情况, 跳转并高亮一下匹配的括号
set showmatch
" 高亮search命中的文本
set hlsearch
" 搜索时忽略大小写
set ignorecase
" " 有一个或以上大写字母时仍大小写敏感
set smartcase"
" 缩进配置
" " Smart indent
set smartindent
" " 打开自动缩进
" " never add copyindent, case error   " copy the previous indentation on
" autoindenting
set autoindent
" tab相关变更
" " 设置Tab键的宽度        [等同的空格个数]
set tabstop=4
" " 每一次缩进对应的空格数
set shiftwidth=4
" " 按退格键时可以一次删掉 4 个空格
set softtabstop=4
" " insert tabs on the start of a line according to shiftwidth, not tabstop
" 按退格键时可以一次删掉 4 个空格
set smarttab
" " 将Tab自动转化成空格[需要输入真正的Tab键时，使用 Ctrl+V + Tab]
set expandtab
" " 缩进时，取整 use multiple of shiftwidth when indenting with '<' and '>'
set shiftround
map 9 $
" 分屏窗口移动, Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" 命令行模式增强，ctrl - a到行首， -e 到行尾
cnoremap <C-j> <t_kd>
cnoremap <C-k> <t_ku>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
" tab切换
map <leader>th :tabfirst<cr>
map <leader>tl :tablast<cr>
"
map <leader>tj :tabnext<cr>
map <leader>tk :tabprev<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprev<cr>
"
map <leader>te :tabedit<cr>
map <leader>td :tabclose<cr>
map <leader>tm :tabm<cr>
"
" " normal模式下切换到确切的tab
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>"
" Toggles between the active and last active tab "
" The first tab is always 1 "
let g:last_active_tab = 1
"nnoremap <leader>gt :execute 'tabnext ' . g:last_active_tab<cr>
"nnoremap <silent> <c-o> :execute 'tabnext ' . g:last_active_tab<cr>
"vnoremap <silent> <c-o> :execute 'tabnext ' . g:last_active_tab<cr>
nnoremap <silent> <leader>tt :execute 'tabnext ' . g:last_active_tab<cr>
autocmd TabLeave * let g:last_active_tab = tabpagenr()
"
"" 新建tab  Ctrl+t
nnoremap <C-t>     :tabnew<CR>
inoremap <C-t> <Esc>:tabnew<CR>
" y$ -> Y Make Y behave like other capitals
map Y y$
" " 复制选中区到系统剪切板中
vnoremap <leader>y "+y


filetype off                  " required
if &t_Co > 1
    syntax enable
endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" powerline
Bundle 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme='understated'
set t_Co=256
set laststatus=2
" 开启tabline
"let g:airline#extensions#tabline#enabled = 1
" tabline中当前buffer两端的分隔字符
let g:airline#extensions#tabline#left_sep = ' '
" " tabline中未激活buffer两端的分隔字符
let g:airline#extensions#tabline#left_alt_sep = '|'
" " tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1
" 映射切换buffer的键位
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>
" " 映射<leader>num到num buffer
"map <leader>1 :b 1<CR>
"map <leader>2 :b 2<CR>
"map <leader>3 :b 3<CR>
"map <leader>4 :b 4<CR>
"map <leader>5 :b 5<CR>
"map <leader>6 :b 6<CR>
"map <leader>7 :b 7<CR>
"map <leader>8 :b 8<CR>
"map <leader>9 :b 9<CR>"

" Tabular: 自动对齐。
Plugin 'godlygeek/tabular'

Plugin 'jiangmiao/auto-pairs'
Bundle 'Lokaltog/vim-easymotion'
" 更改快捷键
map f <Plug>(easymotion-prefix)
map ff <Plug>(easymotion-s)
map fs <Plug>(easymotion-f)
map fl <Plug>(easymotion-lineforward)
map fj <Plug>(easymotion-j)
map fk <Plug>(easymotion-k)
map fh <Plug>(easymotion-linebackward)
" " 忽略大小写
let g:EasyMotion_smartcase = 1
" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
"
" " These `n` & `N` mappings are options. You do not have to map `n` & `N` to
" EasyMotion.
" " Without these mappings, `n` & `N` works fine. (These mappings just provide
" " different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)")

" The Trinity plugin manages Source Explorer, Taglist and NERD Tree, and build them as a great IDE which works like the "Source Insignt".
"Plugin 'wesleyche/Trinity'
" Open and close all the three plugins on the same time 
" nmap -  :TrinityToggleAll<CR> 
"
"Plugin 'klen/python-mode'
"CtrlP
Plugin 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
"Bundle "vim-scripts/TabBar"
Plugin 'majutsushi/tagbar'
nmap <Leader>tb :TagbarToggle<CR> 
let Tlist_Ctags_Cmd="/usr/local/bin/ctags"
Plugin 'terryma/vim-expand-region'
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
Plugin 'mileszs/ack.vim'
let g:ackprg = 'ag --nogroup --nocolor --column'
map <Leader>a :Ack<space>
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
nmap <Leader>n :NERDTreeToggle<CR>
"" Highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn
if has('persistent_undo')  "check if your vim version supports it 
    set undofile "turn on the feature 
    set undodir=$HOME/.vim/undo "directory where the undo files will be stored 
endif
