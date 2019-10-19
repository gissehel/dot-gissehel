set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'kchmck/vim-coffee-script'
Plugin 'digitaltoad/vim-jade'
Plugin 'digitaltoad/vim-pug'
Plugin 'vitalk/vim-lesscss'
Plugin 'wavded/vim-stylus'
Plugin 'leafgarland/typescript-vim'

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

syntax on
set hlsearch
set so=7
"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c
set number

set ts=4
set sw=4
set et
set sts=4
set ai

autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

autocmd BufRead Makefile set noet
autocmd BufRead *.mk set noet
autocmd BufRead *.jade set ts=2
autocmd BufRead *.jade set sw=2
autocmd BufRead *.jade set sts=2
autocmd BufRead *.styl set ts=2
autocmd BufRead *.styl set sw=2
autocmd BufRead *.styl set sts=2
"autocmd BufRead *.slim set ts=2
"autocmd BufRead *.slim set sw=2
"autocmd BufRead *.slim set sts=2

colorscheme elflord

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

