" Use Vim settings, rather than Vi settings. This setting must be as early as
" possible, as it has side effects.

set nocompatible

" Use space as leader
let mapleader = " "

set backspace=2           " Backspace deletes like most programs in insert mode
set cursorline            " Highlight currently-selected line
set hlsearch              " Highlight search results
set ignorecase            " Case insensitive pattern matching
set incsearch             " Do incremental searching
set laststatus=2          " Always display the status line
set nojoinspaces          " One space after periods when joining lines
set noswapfile            " Disable swapfiles
set number relativenumber " Hybrid line numbers
set ruler                 " Show the cursor position all the time
set showcmd               " Display incomplete commands
set smartcase             " Overrides ignorecase if pattern contains caps
set smartindent           " Next-line indentation
set splitbelow splitright " Open splits to the right and bottom

" Soft tabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

filetype plugin indent on

" Color scheme
set background=dark
colorscheme solarized

" Quicker window movement (disable if using vim-tmux-navigator)
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-h> <C-w>h
" nnoremap <C-l> <C-w>l

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" Quicker tab manipulation
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabnew<CR>
nnoremap tw  :tabclose<CR>

" Hotkey for NERDTree toggle
noremap <C-n> :NERDTreeToggle<CR>
" Copy selection to clipboard
vnoremap <C-c> :w !pbcopy<CR><CR>
" Open my vimrc in a split for editing
nnoremap <Leader>ev :vsplit $MYVIMRC<CR>
" Source my vimrc to bring in the latest changes
nnoremap <Leader>sv :source $MYVIMRC<CR>
" Smart paste from system clipboard
noremap <Leader>p :set paste<CR>"*]p:set nopaste<CR>
" Indent entire file
noremap <Leader>i mmgg=G`m<CR>
" Disable search highlighting
noremap <Leader>h :nohlsearch<CR>

" Spell checking and wrapping at 72 columns in markdown files/git commits
autocmd BufRead,BufNewFile *.md setlocal spell textwidth=72
autocmd Filetype gitcommit setlocal spell textwidth=72

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use Ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

  " Ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Local config
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
