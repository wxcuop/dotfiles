" Options
set encoding=utf8
set tabstop=4 " Number of spaces a tab counts for
set shiftwidth=4 " Size of an indent
set expandtab " Use spaces instead of tabs
set incsearch " Incremental search
set hlsearch  " Highlight search results
set ignorecase smartcase " Case-insensitive unless uppercase
set clipboard=unnamedplus " Enables the clipboard between Vim/Neovim and other applications.
set completeopt=noinsert,menuone,noselect " Modifies the auto-complete menu to behave more like an IDE.
set cursorline " Highlights the current line in the editor
set hidden " Hide unused buffers
set autoindent " Indent a new line
set mouse=a " Allow to use the mouse in the editor
set number " Shows the line numbers
set splitbelow splitright " Change the split screen behavior
set title " Show file title
set cc=80 " Show at 80 column a border for good code style                      
filetype plugin indent on   " Allow auto-indenting depending on file type
syntax on
set spell " enable spell check (may need to download language package)
set ttyfast " Speed up scrolling in Vim

set laststatus=2 " used by lightline.vim

" setup plug.vim
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs ' . \
        'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.vim/plugged')
Plug 'davidhalter/jedi-vim'
Plug 'itchyny/lightline.vim'
call plug#end()

let g:jedi#completions_enabled = 1
let g:jedi#show_call_signatures = "1"
