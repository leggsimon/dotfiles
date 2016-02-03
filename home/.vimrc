execute pathogen#infect()

syntax on " Syntax highlighting

" Colorscheme
colorscheme gruvbox
set background=dark

set mouse=a " Allow use of mouse for visual mode, use mouse=n just for window resizing
set number " Show line numbers
set list listchars=tab:»·,trail:·,nbsp:· " Show invisible characters
set autoindent " Autoindent
set backspace=2   " Backspace deletes like most programs in insert mode
set laststatus=2  " Always display the status line
set cursorline " Highlights current line

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_show_hidden = 0

let g:gitgutter_highlight_lines = 1
let g:gitgutter_realtime = 1
let g:gitgutter_eager = 1
set updatetime=250

" Command maps
let mapleader = ","
map <Leader>d :w !diff % -<cr>
map <Leader>i mmgg=G`m
map <Leader>/ :NERDTreeToggle<cr>

" Git command maps
map <Leader>gd :!git diff %<cr>
map <Leader>gs :!git status -s<cr>

