let g:pymode_python = 'python3'
set nocompatible                                            " be iMproved, required
filetype off                                                " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ervandew/supertab'
Plugin 'Kien/ctrlp.vim'
Plugin 'MattesGroeger/vim-bookmarks'
Plugin 'scrooloose/syntastic'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'mtth/scratch.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mhinz/vim-signify'

call vundle#end()
filetype plugin indent on

colo desert                                                 " Colour Scheme
syntax on                                                   " Turn on syntax colouring
set number                                                  " Add line numbers
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|vendor'   " Ignore node modules and others in ctrlp

" set tabs to space
set tabstop=2
set expandtab
set shiftwidth=2
set smarttab
set linebreak
set smartindent
set cindent
set autoindent

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set backspace=indent,eol,start                             " backspace over everything in insert mode

" Alt arrow keys will change windows
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" fix airline slowness leaving insert mode
if ! has('gui_running')
  set ttimeoutlen=10
  augroup FastEscape
    autocmd!
    au InsertEnter * set timeoutlen=0
    au InsertLeave * set timeoutlen=1000
  augroup END
endif

" airline theme
