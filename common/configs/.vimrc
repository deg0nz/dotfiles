" Set POSIX-Compatible shell as shell if we call Vim from fish
if &shell =~# 'fish$'
    set shell=bash
endif

" Configs for fish support
syntax enable
filetype plugin indent on

" Auto- Install of vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'dense-analysis/ale'
Plug 'maximbaz/lightline-ale'
Plug 'cespare/vim-toml'
Plug 'https://github.com/Konstruktionist/vim-fish'
Plug 'Chiel92/vim-autoformat'
Plug 'chr4/nginx.vim'
Plug 'chr4/sslsecure.vim'
call plug#end()

:set expandtab
:set tabstop=2
:set softtabstop=2
:set shiftwidth=2
:set number
:set autoindent
:set smartindent

let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

" lightline.vim status bar configuration
set laststatus=2

syntax enable
filetype plugin indent on