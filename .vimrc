" =========================
" CORE SAFETY
" =========================
set nocompatible
syntax on
filetype plugin indent on

set encoding=utf-8
set fileencoding=utf-8

set hidden
set backspace=indent,eol,start

" =========================
" UI (простота и читаемость)
" =========================
set number
set cursorline
set ruler
set showcmd
set wildmenu

" =========================
" MOUSE (чтобы Tabby был удобнее)
" =========================
set mouse=a

" =========================
" SEARCH (тихо и предсказуемо)
" =========================
set ignorecase
set smartcase
set incsearch
set hlsearch

nnoremap <silent> <Esc><Esc> :nohlsearch<CR>

" =========================
" INDENT (без хаоса)
" =========================
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set autoindent
set smartindent

" =========================
" PERFORMANCE / TERMINAL STABILITY
" =========================
set ttyfast
set timeoutlen=300
set ttimeoutlen=10

set visualbell
set noerrorbells

" =========================
" SAVE HELPER
" =========================
nnoremap <leader>w :w<CR>

" убрать хвостовые пробелы при сохранении
autocmd BufWritePre * %s/\s\+$//e

" =========================
" NAVIGATION (простая)
" =========================
nnoremap J 5j
nnoremap K 5k

nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap * *zz
nnoremap # #zz

" =========================
" HOME / END FIX (Tabby-proof)
" =========================
nnoremap <Home> ^
nnoremap <End> $

inoremap <Home> <C-o>^
inoremap <End> <C-o>$

" raw xterm / Tabby sequences
nnoremap ^[OH ^
nnoremap ^[OF $

inoremap ^[OH <C-o>^
inoremap ^[OF <C-o>$

" =========================
" CTRL ARROWS (word nav)
" =========================
nnoremap ^[1;5C w
nnoremap ^[1;5D b

inoremap ^[1;5C <C-o>w
inoremap ^[1;5D <C-o>b
