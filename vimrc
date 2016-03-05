filetype plugin indent on
runtime macros/matchit.vim

" Load plugins first in case settings require them
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

" Options
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
set nojoinspaces                    " Join sentences with one space, not two
set noswapfile                      " Disable swapfiles
set number relativenumber           " Current line absolute, others relative
set shiftround                      " Always indent to a multiple of shiftwidth
set shiftwidth=2                    " Indent by 2 spaces (same as tabstop)
set smartcase                       " Overrides ignorecase when using caps
set splitbelow splitright           " Open splits to the right and bottom
set tabstop=2                       " Use 2 spaces for tabs
set textwidth=80                    " Set text gutter to 80 columns

" Status line
set statusline=%.40f                " Current file path (40 characters max)
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

  set background=dark
  colorscheme solarized
endif

" Ag user command
command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

" Space is easier to hit than comma or backslash
let mapleader = " "

" Make yank behave like other operators
nnoremap Y y$

" System clipboard copy/paste
xnoremap <C-c> "*y
nnoremap <Leader>p :set paste<CR>"*]p:set nopaste<CR>

" Copy current path into the system clipboard
nnoremap <Leader>% :let @+ = expand("%")<CR>

" Grep for the current word
nnoremap <Leader>k :Ag <C-R><C-W><CR>
xnoremap <Leader>k y<CR>:Ag <C-R>"<CR>

" On-the-fly updates to vimrc
nnoremap <Leader>v :tabedit $MYVIMRC<CR>

" Indent entire file
nnoremap <Leader>= mmgg=G`m<CR>

" Disable search highlighting
nnoremap <Leader>h :nohlsearch<CR>

" RSpec.vim
let g:rspec_command = "VimuxRunCommand('rspec {spec}')"
nnoremap <Leader>t :call RunCurrentSpecFile()<CR>
nnoremap <Leader>s :call RunNearestSpec()<CR>
nnoremap <Leader>l :call RunLastSpec()<CR>
nnoremap <Leader>a :call RunAllSpecs()<CR>

augroup vimrc
  autocmd!
  autocmd BufWritePost .vimrc source $MYVIMRC
  autocmd VimResized * :wincmd =
augroup END

if executable('ag')
  " Use ag as the default grep program
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Fast enough that we don't need caching.
  let g:ctrlp_user_command = 'ag --files-with-matches --hidden --literal --nocolor -g "" %s'
  let g:ctrlp_use_caching = 0
endif

" Allow local overrides
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
