" Manage plugins with vim-plug
call plug#begin('~/.vim/plugged')
" Vertical indentation lines
Plug 'Yggdroot/indentLine'

" File navigation
Plug 'scrooloose/nerdtree'

" Organize tabs & buffers
Plug 'vim-ctrlspace/vim-ctrlspace'

" Fuzzy search
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" Auto-complete
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-ragtag'
Plug 'alvan/vim-closetag'

" Easily surround words with quotes, etc.
Plug 'tpope/vim-surround'

" Enable repeating supported plugin commands
Plug 'tpope/vim-repeat'

" A sensible .vimrc config
Plug 'tpope/vim-sensible'

" Sublime-style multiple selections
Plug 'terryma/vim-multiple-cursors'

" Git commands from within vim
Plug 'tpope/vim-fugitive'

" Run Rspec tests from within vim
Plug 'skalnik/vim-vroom'

" Ruby configuration
"Plug 'vim-ruby/vim-ruby'

" Folding for ruby & rspec files
Plug 'vim-utils/vim-ruby-fold'

" Add liquid/jekyll syntax suppport
Plug 'tpope/vim-liquid'

call plug#end()

" Use ; to fuzzy search for files (using fzf)
"map ; :Files<CR>
nmap <leader>; :Files<CR>

" Use \ to fuzzy search for keywords in code base (using fzf + ag)
"map \ :Ag<CR>
nmap <leader>\ :Ag<CR>

" Automatically reload changed files (if no unsaved changes in Vim)
set autoread

" Syntax / search highlighting
syntax on
set hlsearch

" Indentation vertical line character
let g:indentLine_char = '┆'

" Window navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Use gw to switch window panes
nmap gw <C-W><C-W>

" Use F2 to toggle NERDTree on/off
nmap <silent> <F2> :NERDTreeToggle<CR>

" Turn on line numbers
set number

" Disable line wrapping
set nowrap

" Always show file name
set laststatus=2

" Indentation
set tabstop=8     " tabs are at proper location
set expandtab     " don't use actual tab character (ctrl-v)
set shiftwidth=2  " indenting is 2 spaces
set autoindent    " turns it on
set smartindent   " does the right thing (mostly) in programs
set cindent       " stricter rules for C programs

" Disable beeping on Windows Bash
if has('win32')
  set visualbell
endif

" Folding methods
"set foldmethod=indent
"set foldlevel=1
"set foldclose=all

" Setup for vim-ctrlspace
set nocompatible
set hidden
"set showtabline=0
nnoremap <silent><C-p> :CtrlSpace O<CR>
let g:CtrlSpaceLoadLastWorkspaceOnStart = 1
if executable("ag")
    let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
endif
if has("gui_running")
    " Settings for MacVim and Inconsolata font
    let g:CtrlSpaceSymbols = { "File": "◯", "CTab": "▣", "Tabs": "▢" }
endif

" Setup for vim-closetag
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.rb'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" Use % to bounce from do to end etc.
filetype plugin on
runtime macros/matchit.vim

" Add jbuilder syntax highlighting
au BufNewFile,BufRead *.jbuilder set ft=ruby
