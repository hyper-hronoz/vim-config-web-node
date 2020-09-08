" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
"   Castom settings

set number

set mouse=a

set tabstop=4       " The width of a TAB is set to 4.

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set belloff=all

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

syntax enable

set autoindent

let g:user_emmet_mode='inv'

let g:user_emmet_leader_key=','

" adding plugins
call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'

Plug 'preservim/nerdtree'

Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

Plug 'mattn/emmet-vim'

Plug 'blueshirts/darcula', {'as': 'darcula' }

Plug 'joshdick/onedark.vim'

Plug 'flazz/vim-colorschemes'

Plug 'xolox/vim-colorscheme-switcher'

Plug 'sheerun/vim-polyglot'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'tpope/vim-surround'

Plug 'xolox/vim-misc'

call plug#end()

" add vim themes 
color darcula

" mapping
map <C-n> :NERDTreeToggle<CR>

" autocomplition
" filetype plugin on
" set omnifunc=syntaxcomplete#Complete

