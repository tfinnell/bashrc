set nocompatible
set number
set numberwidth=3
set hlsearch
set wildmenu
set pastetoggle=<F11>

set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

set laststatus=2

set statusline=
set statusline+=\ %t       "tail of the filename
set statusline+=\ [%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}]\ "file format

set statusline+=%#boolean#
set statusline+=\ %Y\      "filetype
set statusline+=%*

set statusline+=%=      "left/right separator
set statusline+=\ %#diffchange#
set statusline+=%r      "read only flag
set statusline+=%m      "modified flag
set statusline+=%*
set statusline+=\ %c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

call pathogen#infect()

syntax on
colors lucius
filetype indent plugin on

let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1

map <C-l> :let @/ = ''<CR>
map <F2> :tabnew<CR>
map <F3> gT
map <F4> gt
map <F5> :brewind<CR>
map <F6> :bprevious<CR>
map <F7> :bnext<CR>
map <F8> :blast<CR>
map <F10> :source ~/.vimrc<CR>
map <F12> :NERDTreeToggle<CR>

nnoremap <LEADER>F :set expandtab<CR>:retab!<CR>:%s/\s\+$//<CR>:let @/=''<CR>
nmap <LEADER>m :w<CR>:make<CR>:cw<CR>
