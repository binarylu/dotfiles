execute pathogen#infect()
syntax on
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 一般设定 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 设定默认解码 
set fenc=utf-8 
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936 
"vim内部使用的编码方式
set encoding=utf-8

set clipboard=unnamed

"vim中当前文件的字符编码方式
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

"语法高亮
syntax on 

"取消vi兼容模式
set nocompatible

"设置冒号命令和搜索命令的历史记录长度
set history=200

"回显输入的命令
set showcmd

"显示当前的模式
set showmode

"关闭错误信息响铃
set noerrorbells 
"使用可视响铃代替呼叫
set visualbell

"让退格、空格、上下箭头遇到行首行尾时自动移到下一行
set whichwrap =b,s,<,>,[,]

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文件设置 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 在状态行上显示光标所在位置的行号和列号
set ruler 
"set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%) 
" 命令行（在状态行下）的高度，默认为1
"set cmdheight=2 

"状态栏显示设置
set laststatus=2
set statusline=
"set statusline+=%2*%-3.3n%0*\
set statusline+=%f\
set statusline+=%h%1*%m%r%w%0*
set statusline+=[
if v:version >= 600
set statusline+=%{strlen(&ft)?&ft:'none'},
set statusline+=%{&encoding},
endif
set statusline+=%{&fileformat}]
if filereadable(expand("$VIM/vimfiles/plugin/vimbuddy.vim"))
set statusline+=\ %{VimBuddy()}
endif
set statusline+=%=
set statusline+=0x%-8B\
set statusline+=%-14.(%l,%c%V%)\ %<%P

" 使回格键（backspace）正常处理indent, eol, start等 
set backspace=2 "或者 set backspace=indent,eol,start

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索和匹配 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 高亮搜索结果
set hlsearch
" 高亮显示匹配的括号 
set showmatch 

" 插入括号时匹配括号高亮的时间（单位是十分之一秒）
set matchtime=5

" 在搜索的时候忽略大小写 
set ignorecase 

" 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索）
set incsearch 

" 设置正则查找，除了 $ . * ^ 之外其他元字符都要加反斜杠
set magic

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文本格式和排版 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 自动格式化 
set formatoptions=tcrqn 

" 继承前一行的缩进方式，特别适用于多行注释 
set autoindent 

" 为C程序提供自动缩进 
set smartindent 

" 使用C样式的缩进 
set cindent 

" 制表符为4 
set tabstop=4 

" 统一缩进为4 
set softtabstop=4 
set shiftwidth=4 

" 用空格代替制表符 
set expandtab 

" 不要换行 
"set nowrap 
set wrap

" 粘贴代码时候的关闭自动缩进
set pastetoggle=<F9>

" open nerdtree
map <C-n> :NERDTreeToggle<CR>