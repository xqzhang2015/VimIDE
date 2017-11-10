
set encoding=utf-8
" show line number
set nu

" set backspace
set backspace=indent,eol,start


" if directory name VimIDE is NOT .vim, we need to source pathogen.vim by
" absolute path
source ~/VimIDE/autoload/pathogen.vim

execute pathogen#infect()
syntax on
filetype plugin indent on

" NERD Tree 
let NERDChristmasTree=0
let NERDTreeWinSize=30
map <C-n> :NERDTreeToggle<CR>
let NERDTreeWinPos="left"
" Automatically open a NERDTree if no files where specified
autocmd vimenter * if !argc() | NERDTree | endif
" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Tagbar
let g:tagbar_width=45
let g:tagbar_autofocus=1
nmap <F6> :TagbarToggle<CR>
map <C-t> :TagbarToggle<CR>
" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:TagbarType") && b:TagbarType == "primary") | q | endif

" YouCompleteMe
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/vim-YouCompleteMe/third_party/ycmd/cpp/.ycm_extra_conf.py'
let g:ycm_disable_for_files_larger_than_kb=1517475

" ctags
set tags=tags;
set autochdir

" airline


" indent set
set autoindent
" set expandtab "intention: whitespace instead of tab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set list " show Tab
set listchars=tab:\|\ , " use | to replace Tab

