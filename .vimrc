execute pathogen#infect()
syntax on
set nocompatible
filetype plugin indent on

let g:terraform_align=1

set number relativenumber

augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
