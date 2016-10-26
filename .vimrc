set nocompatible              " required
filetype off                  " required

let mapleader = ","
let python_highlight_all=1
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set encoding=utf-8
set nu
set nowrap
map ; :
set pastetoggle <F2>

" Allow backspacing everything in insert mode
set backspace=indent,eol,start


"show powerline the whole time
set laststatus=2
let g:airline_powerline_fonts = 1

"set clipboard=unnamed

call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'cjrh/vim-conda'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ervandew/supertab'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'jeetsukumaran/vim-indentwise'






" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <space> za
inoremap jk <Esc>

" Enable folding
set foldmethod=indent
set foldlevel=99


let g:SimpylFold_docstring_preview=1

set tabstop=2
set softtabstop=2
set shiftwidth=2
set textwidth=79
set expandtab
set autoindent
set fileformat=unix


"au BufNewFile,BufRead *.py:
            "\ set tabstop=2 |
            "\ set softtabstop=2 |
            "\ set shiftwidth=2 |
            "\ set textwidth=79 |
            "\ set expandtab |
            "\ set autoindent |
            "\ set fileformat=unix

"au BufNewFile,BufRead *.js, *.html, *.css:
            "\ set tabstop=2 |
            "\ set softtabstop=2 |
            "\ set shiftwidth=2

"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"Colour settings
set background=dark
colorscheme solarized
call togglebg#map("<F5>")

let g:ycm_python_binary_path = 'python'
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

"ctrl-p Tags
nnoremap <leader>. :CtrlPTag<cr>
map <f10> :!ctags -R .<cr>

