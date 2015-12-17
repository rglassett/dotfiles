" Use Vim settings, rather than Vi settings. This setting must be as early as
" possible, as it has side effects.

set nocompatible

" Use space as leader
let mapleader = " "

set backspace=2           " Backspace deletes like most programs in insert mode
set cursorline            " Highlight currently-selected line
set diffopt+=vertical     " Use vertical splits in Gdiff
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

" Plugin-dependent configuration
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

filetype plugin indent on

" Color scheme
set background=dark
colorscheme solarized

" Quicker tab manipulation
nnoremap th :tabfirst<CR>
nnoremap tj :tabnext<CR>
nnoremap tk :tabprev<CR>
nnoremap tl :tablast<CR>
nnoremap tt :tabnew<CR>
nnoremap tw :tabclose<CR>

" faster quickfix list navigation
nnoremap [Q :cfirst<CR>
nnoremap [q :cprev<CR>
nnoremap ]q :cnext<CR>
nnoremap [Q :clast<CR>

nnoremap <C-n> :NERDTreeToggle<CR>
" Copy selection to clipboard
vnoremap <C-c> "*du
" Smart paste from system clipboard
noremap <Leader>p :set paste<CR>"*]p:set nopaste<CR>
" On-the-fly updates to vimrc
nnoremap <Leader>v :tabedit $MYVIMRC<CR>
" Indent entire file
noremap <Leader>i mmgg=G`m<CR>
" Disable search highlighting
noremap <Leader>h :nohlsearch<CR>

set statusline=%.40f
set statusline+=\ 
set statusline+=%y
set statusline+=\ 
set statusline+=%m
set statusline+=%=
set statusline+=%h
set statusline+=\ 
set statusline+=%c
set statusline+=\ 
set statusline+=[%l/%L]
set statusline+=\ 
set statusline+=(%p%%)

augroup window_resize
  autocmd!
  autocmd VimResized * :wincmd =
augroup END

augroup update_vimrc
  autocmd!
  autocmd BufWritePost .vimrc source $MYVIMRC
augroup END

augroup filetypes
  autocmd!
  autocmd Filetype gitcommit,markdown setlocal spell textwidth=72
augroup END

let g:markdown_fenced_languages = ['css', 'erb=eruby', 'javascript', 'js=javascript', 'ruby', 'rb=ruby', 'html']

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor

  " Use Ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

  let g:ctrlp_use_caching = 0
endif

" Local config
if filereadable(glob(".vimrc.local"))
  source .vimrc.local
endif
