" - Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
" - Castom settings

set number

set mouse=a

set tabstop=2       " The width of a TAB is set to 4.

set nowrap

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set belloff=all

set shiftwidth=2    " Indents will have a width of 4

set softtabstop=2   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

syntax enable

set autoindent
" emmet

let g:user_emmet_mode='inv'

let g:user_emmet_leader_key=','

let g:user_emmet_settings = {
\ 'html' : {
\     'block_all_childless' : 1,
\   }
\ }

" adding plugins

call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'

Plug 'preservim/nerdtree'

Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

Plug 'google/vim-maktaba'

Plug 'google/vim-codefmt'

Plug 'maksimr/vim-jsbeautify'

Plug 'google/vim-glaive'

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

cmap ff FormatCode 
" autocomplition
" filetype plugin on
" set omnifunc=syntaxcomplete#Complete
