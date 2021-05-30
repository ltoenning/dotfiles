set nocompatible              " be iMproved, required
filetype off                  " required

" Show line numbers
set number

" Enable syntax-highlighting
syntax on

" Map : to space
nnoremap <space> :

" Vundle setup
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'


" Plugins
Plugin 'preservim/nerdtree'
Plugin 'vim-airline/vim-airline'


call vundle#end()            " required
filetype plugin indent on    " required

""""""" Plugin specifiy settings

" NERDTree settings
nmap <F6> :NERDTreeToggle<CR>
