" set UTF-8 encoding
"set enc=utf-8
"set fenc=utf-8
"set termencoding=utf-8

" disable vi compatibility 
set nocompatible

" use indentation of previous line
set autoindent
" use intelligent indentation for C
set smartindent

" configure tabwidth and insert spaces instead of tabs
set tabstop=4
set shiftwidth=4
if has("autocmd")
	autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4
endif
" wrap lines at 120 chars
"set textwidth=120
" turn syntax highlighting on
set t_Co=256

nmap j <C-w>j
nmap h <C-w>h
nmap k <C-w>k
nmap l <C-w>l
nmap W <C-w>w
nmap bb <C-b>
nmap ff <C-f>

set number
set showmatch

set tags+=~/.vim/tags/cpp_src/tags " 设置tags搜索路径
set wildmode=longest,list " Ex命令自动补全采用bash方式"
syntax on
filetype plugin indent on

map <C-n> :NERDTree<CR>

" pathongen
execute pathogen#infect()

" taglist
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
let Tlist_Sort_Type="name"

" omnicppcomplete
set completeopt=longest,menu
let OmniCpp_NamespaceSearch = 2 " search namespaces in the current buffer and in included files
let OmniCpp_ShowPrototypeInAbbr = 1 " 显示函数参数列表
let OmniCpp_MayCompleteScope = 1 " 输入 :: 后自动补全
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]"]"
