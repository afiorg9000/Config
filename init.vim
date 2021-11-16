" w'ere using VI Improved, use it then. Just a conf since this should happen auto
set nocompatible

" Search while I type, with highlighting, only using case if i do
set ignorecase
set smartcase
set incsearch
set hls

" Shift/Tab
filetype plugin indent on


" vim.wikia.com/wiki/indenting_source_code
" improve tab functionality
set smartindent smarttab noexpandtab

" Size of tab
set tabstop=4 shiftwidth=4

" no vertical scroll
set nowrap
set textwidth=0

" Randomness
" Always show some kind of status
set laststatus=2
set statusline=
set statusline+=%f
set statusline+=%r
set statusline+=%m
set statusline+=%=
set statusline+=%y
set statusline+=\ %p%%
set statusline+=\ %l:%c
" turn on line numbering.
set number
set visualbell errorbells ruler

" Joining the darkside...
set mouse=a

" Put some vertical space around the cursor
set scrolloff=2

" Fix trailing whitespace so they are periods
set list
set listchars=eol: ,tab:\|\ ,trail:.

" Make non text more visible
highlight NonText guifg=#4a4a59 guibg=#4a4a59

" Setup Persistent undo
set undofile
set undodir=~/.undo

" Key maps
map <leader>n :NERDTreeToggle <CR>
map <C-t> :tabnew <CR>
map <C-/> <Plug>NERDComToggleComment!


" Change colorscheme from default to solarized
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" Automatically create .backup directory, writable by the group.
if filewritable("~/") && ! filewritable("~/.backup")
  silent execute '!umask 002; mkdir ~/.backup'
endif
set backupdir=~/.backup directory=~/.backup


" CtrlP Fixes
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40

let g:ctrlp_working_path_mode = 'a'

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|optimize'

"colemak hjkl hack
nnoremap <M-h> <Left>|
nnoremap <M-n> <Down>|
nnoremap <M-e> <Up>|
nnoremap <M-i> <Right>|

"easy file jump
set hidden
set path+=**

"quick windows change
" Insert mode:
  inoremap <M-h> <Esc><c-w>h
  inoremap <M-n> <Esc><c-w>j
  inoremap <M-e> <Esc><c-w>k
  inoremap <M-i> <Esc><c-w>l
  " Visual mode:
  vnoremap <M-h> <Esc><c-w>h
  vnoremap <M-j> <Esc><c-w>j
  vnoremap <M-k> <Esc><c-w>k
  vnoremap <M-l> <Esc><c-w>l

"TERMINAL
"quick terminal
if has('nvim')
  tnoremap <Esc> <C-\><C-n>
endif

if has('nvim')
  tnoremap <A-[> <Esc>
endif
"quick terminal window switch
if has('nvim')
  tnoremap <a-h> <c-\><c-n><c-w>h
  tnoremap <a-n> <c-\><c-n><c-w>j
  tnoremap <a-e> <c-\><c-n><c-w>k
  tnoremap <a-i> <c-\><c-n><c-w>l
endif

"plug
call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
