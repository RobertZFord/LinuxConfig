" using vim-plug for plugin management
call plug#begin()

" dunno what this is
Plug 'tpope/vim-sensible'

" nerd tree? looks like an in-program directory browser
Plug 'scrooloose/nerdtree'

"Plug 'ervandew/supertab'

" ------------- these three are used by omnisharp
" syntastic -- an external syntax checker
Plug 'vim-syntastic/syntastic'

Plug 'kien/ctrlp.vim'

Plug 'tpope/vim-dispatch'
" -----------------------------------------------

Plug 'OmniSharp/Omnisharp-vim'

call plug#end()

set tabstop=4
set expandtab
command Cargo ! cargo run
set wrap!
