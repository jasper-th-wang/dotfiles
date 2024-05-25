packadd! everforest

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set spell
set guifont=JetBrains\ Mono:h16

set smartindent

set scrolloff=8
" Set leader key
let mapleader = " "

map j gj
map k gk

" Enable relative line numbers
set relativenumber

" Insert mode mapping for 'jj' to escape
inoremap jj <Esc>

" Visual mode mapping to delete and paste without overwriting the clipboard
xnoremap <leader>p "_dP

" Normal and visual mode mappings to yank to the system clipboard
nnoremap <leader>y "+y
vnoremap <leader>y "+y

" Normal mode mapping to yank entire line to the system clipboard
nnoremap <leader>Y "+Y

" Normal and visual mode mappings to delete without overwriting the clipboard
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" Normal mode mappings to scroll half page and recenter
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" Normal mode mappings for quick line insertion above and below
nnoremap <leader>o o<Esc>k
nnoremap <leader>O O<Esc>j

" Normal mode mapping to copy the current file's directory path to the clipboard
nnoremap <leader>l :let @*=expand("%:p:h")<CR>

" Visual mode mapping to move selected lines up or down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Keymap to close the current buffer
nnoremap <leader>bd :bd<CR>

" Keymap to go to the previous buffer
nnoremap [b :bp<CR>

" Keymap to go to the next buffer
nnoremap ]b :bn<CR>

" Keymap to append a semicolon in insert mode and return to normal mode
inoremap ;; <C-o>A;<Esc>

" Undotree binding
nnoremap <leader>u :UndotreeToggle<CR>

" Theme
if has('termguicolors')
    set termguicolors
endif

" For dark version.
set background=dark

" For light version.
" set background=light

" Set contrast.
" This configuration option should be placed before `colorscheme everforest`.
" Available values: 'hard', 'medium'(default), 'soft'
let g:everforest_background = 'soft'

" For better performance
let g:everforest_better_performance = 1

colorscheme everforest

