filetype plugin indent on
runtime macros/matchit.vim

" Load plugins first in case settings require them
if filereadable(expand("$HOME/.vimrc.bundles"))
  source $HOME/.vimrc.bundles
endif

" Options
set autoindent                      " Preserve indentation on new lines
set backspace=indent,eol,start      " Sane backspace behavior
set colorcolumn=+1                  " Highlight the text gutter
set cursorline                      " Highlight currently-selected line
set diffopt+=vertical               " Use vertical splits in diff mode
set expandtab                       " Convert tab characters to spaces
set hlsearch                        " Highlight search results
set ignorecase                      " Default to case-insensitive searching
set incsearch                       " Highlight first match while searching
set laststatus=2                    " Always display the status line
set lazyredraw                      " Boost macro performance
set list                            " Enable list mode
set listchars=tab:»·,trail:·,nbsp:· " Show tabs and unwanted spaces
set mouse=a                         " Enable mouse in all modes
set nojoinspaces                    " Join sentences with one space, not two
set noswapfile                      " Disable swapfiles
set number relativenumber           " Current line absolute, others relative
set shiftround                      " Always indent to a multiple of shiftwidth
set shiftwidth=0                    " Use the value of 'tabstop' for autoindent
set smartcase                       " Overrides ignorecase when using caps
set splitbelow splitright           " Open splits to the right and bottom
set tabstop=2                       " Use 2 spaces for tabs
set textwidth=80                    " Set text gutter to 80 columns
set ttymouse=xterm2                 " Improve mouse compatibility with tmux
set undofile                        " Record undo history after leaving buffer
set undodir=$HOME/.vim/undodir      " Store undofiles in $HOME/.vim/undodir

" Status line
set statusline=%f                   " Current file path (40 characters max)
set statusline+=\                   " Separator
set statusline+=%y                  " [Filetype]
set statusline+=%m                  " Modified flag [+/-]
set statusline+=%=                  " Make following items right-aligned
set statusline+=%h                  " Help buffer flag
set statusline+=\                   " Separator
set statusline+=%c                  " Column number
set statusline+=\                   " Separator
set statusline+=[%l/%L]             " [Current line/total lines]
set statusline+=\                   " Separator
set statusline+=%p%%                " Percentage through file

" Use syntax highlighting and color scheme when possible
if (&t_Co > 2 || has("gui_running"))
  if !exists("syntax_on")
    syntax on
  endif

  colorscheme solarized
endif

augroup vimrc
  autocmd!
  autocmd BufWritePost .vimrc source $MYVIMRC
  autocmd VimResized * wincmd =
augroup END

let mapleader = " "

nnoremap <Leader>% :let @+ = expand("%")<CR>
nnoremap <Leader>es :tabedit $HOME/.vim/bundle/vim-snippets<CR>
nnoremap <Leader>ev :tabedit $MYVIMRC<CR>
nnoremap <Leader>h :nohlsearch<CR>
nnoremap <Leader>p :set paste<CR>"*]p:set nopaste<CR>
nnoremap Y y$
xnoremap <C-c> "+y

" Keyword.vim
let g:keyword_command = 'Ag --fixed-strings {keyword}'

" Pick.vim
nnoremap <C-p> :call PickFile()<CR>

" RSpec.vim
let g:rspec_command = "VimuxRunCommand('rspec {spec}')"
nnoremap <Leader>t :call RunCurrentSpecFile()<CR>
nnoremap <Leader>s :call RunNearestSpec()<CR>
nnoremap <Leader>l :call RunLastSpec()<CR>
nnoremap <Leader>a :call RunAllSpecs()<CR>

" Allow local overrides
if filereadable(expand("$HOME/.vimrc.local"))
  source $HOME/.vimrc.local
endif
