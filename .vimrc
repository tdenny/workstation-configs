set nocompatible
set encoding=utf-8
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle')

Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'hashivim/vim-terraform'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'marshallward/vim-restructuredtext'
Plugin 'stephpy/vim-yaml'
Plugin 'ledger/vim-ledger'

call vundle#end()

syntax on
set background=dark
colorscheme solarized
filetype plugin indent on

let g:terraform_align=1

set number relativenumber

augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

au BufNewFile,BufRead *.py
    \ set colorcolumn=80

au BufNewFile,BufRead *.rst
    \ set colorcolumn=80 textwidth=80

au BufNewFile,BufRead *.sql
    \ set colorcolumn=80 shiftwidth=4 expandtab

au BufNewFile,BufRead *.ts
    \ set expandtab shiftwidth=2 softtabstop=2
