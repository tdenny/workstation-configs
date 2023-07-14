filetype plugin indent on
execute pathogen#infect()
call pathogen#helptags()
syntax on
set nocompatible

let g:terraform_align=1

set number relativenumber

augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

