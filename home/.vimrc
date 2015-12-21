set history=700
filetype plugin on
filetype indent on

"Mouse mode by default
set mouse=a

"Nicer defaults
set autoread
let mapleader = ","
let g:mapleader = ","
nmap <leader>w :w!<cr>
set foldcolumn=1
set so=7
set wildmenu
set ruler
set ignorecase
set backspace=2
set smartcase
set hlsearch
set incsearch
set lazyredraw
set magic
set showmatch
set mat=2
set foldcolumn=1


"Turn backup off
set nobackup
set nowb
set noswapfile

"Better tab detection
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set lbr
set tw=500
set ai "Auto indent
set si "Smar indent
set wrap "Wrap lines

"Nav through wrapped lines
map j gj
map k gk

"Search with space, and reverse search with ?
map <space> /
map <c-space> ?

"Ctrl + Enter to clear search highlights
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

" Smart way to move windows
"nnoremap <M-j> <C-W>J
"nnoremap <M-k> <C-W>K
"nnoremap <M-h> <C-W>H
"nnoremap <M-l> <C-W>L

" Close the current buffer
map <leader>bd :Bclose<cr>

" Close all the buffers
map <leader>ba :1,1000 bd!<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t<leader> :tabnext 

" Always show the status line
set laststatus=2

"hi User1 ctermfg=215 ctermbg=16
"hi User2 ctermfg=167 ctermbg=16
"hi User3 ctermfg=207 ctermbg=16
"hi User4 ctermfg=155 ctermbg=16
"hi User5 ctermfg=227 ctermbg=16

" Format the status line
set statusline=
set statusline +=%1*\ %n\ %*            "buffer number
set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
set statusline +=%2*0x%04B\ %*          "character under cursor

map 0 ^

" Special mappings
nmap m j
inoremap kk <ESC>
nnoremap <S-Enter> O<Esc>
nnoremap <CR> o<Esc>
nnoremap K i<CR><Esc>
nnoremap <Tab> >> 
nnoremap <S-Tab> <<
"nmap <C-Tab> :tabnext<cr>
"nmap <C-S-Tab> :tabprevious<cr>
nmap <leader>n :set nu!<cr>
nmap <leader>m :call ToggleMouse()<cr>

set pastetoggle=<leader>p

set t_Co=256
set t_ut=

"set colorscheme
"set background=dark
color molokai

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

function! ToggleMouse()
    " check if mouse is enabled
    if &mouse == 'a'
        " disable mouse
        set mouse=
        :echo "mouse disabled"
    else
        " enable mouse everywhere
        set mouse=a
        :echo "mouse enabled"
    endif
endfunc
