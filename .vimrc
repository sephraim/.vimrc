" Drupal configurations
if has("autocmd")
  " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
	  autocmd BufRead,BufNewFile *.inc set filetype=php
	  autocmd BufRead,BufNewFile *.install set filetype=php
	  autocmd BufRead,BufNewFile *.test set filetype=php
	 augroup END 
endif

" Other configurations
syn clear
let b:is_bash=1
syntax on
set ai " Auto-indent
set nu " Line numbers
set tabstop=2 " Tab spaces
set softtabstop=2
set shiftwidth=2 " Shifting spaces for autoindent
set expandtab " Convert tabs into specified number of spaces
set ls=2 " Display filename continuously
set hlsearch
set incsearch " Code completion (type CTRL-p)

" Abbreviations
iab pr printf("");<left><left><left>
iab sc scanf("");<left><left><left>
ab startc #include <stdio.h>int main() {}<up>
