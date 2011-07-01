" Turn off vi settings
set nocompatible

filetype off 
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" get the filtype stuff on
filetype on
filetype plugin on
filetype plugin indent on
syntax enable " Turn on syntax highlighting
set autoindent
set smartindent

set history=50 " keep 50 commands in the command history
set hlsearch " highlight search results
set incsearch " search while typing
set ruler " show the cursor position at all time
set number " Turn on the line numbering
set wildmenu " Show menu for command completion
set autoread " Auto read a file when it is change outside of vim
set vb t_vb= " prevents vim from making a beeps when a command doesn't work
set nowrap "disable line wrap
 
" set the search scan so that it ignores case when the search is all lower
" case but recognizes uppercase if it's specified
set ignorecase
set smartcase

" Make command line two lines high
set ch=2

" Set the status line the way i like it
set stl=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%c\ Buf:%n\ [%b][0x%B]

" tell VIM to always put a status line in, even if there is only one window
set laststatus=2

" Don't update the display while executing macros
set lazyredraw

" Show the current command in the lower right corner
set showcmd

" Show the current mode
set showmode

" Hide the mouse pointer while typing
set mousehide

" When the page starts to scroll, keep the cursor 8 lines from the top and 8
" lines from the bottom
set scrolloff=8

" When completing by tag, show the whole tag, not just the function name
set showfulltag

" Set the textwidth to be 120 chars
set textwidth=120

" get rid of the silly characters in window separators
set fillchars=""

set backspace=indent,eol,start " allow backspacing over everything in insert mode

set diffopt=vertical
set tabstop=4
set shiftwidth=4

" Maps Ctrl-UP,DOWN,LEFT,RIGHT to change the selected window
noremap <C-up> <C-W>j
noremap <C-down> <C-W>k
noremap <C-left> <C-W>j
noremap <C-right> <C-W>l

" set the pasting
nnoremap <F5> :set invpaste paste?<Enter>
imap <F5> <C-O><F5>
set pastetoggle=<F5>

" Initial path seeding
set path=
set path+=/usr/local/include/**
set path+=/usr/include/**

autocmd BufEnter * lcd %:p:h " switches the working dir to the buffer dir

" Settings for the Tag List
let Tlist_WinWidth = 50
map <F4> :TlistToggle<cr>
map <F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" Key Mappings for the Tabs
map ,tn :tabnew<CR>
map ,tc :tabclose<CR>
map ,th :tabprevious<CR>
map ,tl :tabnext<CR>

" Mapping for jumping to the taglist
map ,l :TlistOpen<CR>

" Key Mapping for Search
nmap <C-h> <Esc>:noh<Return><Esc> 
imap <C-h> <Esc>:noh<CR>a

" Quit with F12
map <F12> <Esc>:qa!<CR>
imap <F12> <Esc>:qa!<CR>

" Save with F2
map <F2> <Esc>:w<CR>
imap <F2> <Esc>:w<CR>a

inoremap <C-e> <Esc>$ 
noremap <C-e> <Esc>$



