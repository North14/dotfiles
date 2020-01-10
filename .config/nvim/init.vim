if &compatible
  set nocompatible
endif

set shell=bash

call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
" git wrapper
Plug 'tpope/vim-fugitive'
" linter
Plug 'desmap/ale-sensible' | Plug 'w0rp/ale'

Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'branch': 'release/1.x',
  \ 'for': [
    \ 'javascript',
    \ 'css',
    \ 'json',
    \ 'markdown',
    \ 'lua',
    \ 'php',
    \ 'python',
    \ 'ruby',
    \ 'html',
    \ 'yaml' ] }

" completes ( with )
Plug 'jiangmiao/auto-pairs'
" Nord theme for vim
Plug 'arcticicestudio/nord-vim'
" show colors directly in file
" Plug 'ap/vim-css-color'
Plug 'chrisbra/Colorizer'
" fuzzy finder
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
" use the virtualenv instead of global/user
Plug 'jmcantrell/vim-virtualenv'

Plug 'tpope/vim-sensible'

" All of your Plugins must be added before the following line
call plug#end()            " required

" set Nord as colorscheme
colorscheme nord

set autoindent
set cindent
set nowrap
set backspace=indent,eol,start
set ruler
set suffixes+=.aux,.bbl,.blg,.brf,.cb,.dvi,.idx,.ilg,.ind,.inx,.jpg,.log,.out,.png,.toc
set suffixes-=.h
set suffixes-=.obj
set number
set numberwidth=5
set cursorline
set relativenumber
set incsearch

syntax on

" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

filetype plugin indent on    " required

" Move temporary files to a secure location to protect against CVE-2017-1000382
if exists('$XDG_CACHE_HOME')
  let &g:directory=$XDG_CACHE_HOME
else
  let &g:directory=$HOME . '/.cache'
endif
let &g:undodir=&g:directory . '/vim/undo//'
let &g:backupdir=&g:directory . '/vim/backup//'
let &g:directory.='/vim/swap//'

" Create directories if they doesn't exist
if ! isdirectory(expand(&g:directory))
  silent! call mkdir(expand(&g:directory), 'p', 0700)
endif
if ! isdirectory(expand(&g:backupdir))
  silent! call mkdir(expand(&g:backupdir), 'p', 0700)
endif
if ! isdirectory(expand(&g:undodir))
  silent! call mkdir(expand(&g:undodir), 'p', 0700)
endif

" Make shift-insert work like in Xterm
if has('gui_running')
	map <S-Insert> <MiddleMouse>
	map! <S-Insert> <MiddleMouse>
endif

"" Syntax checker settings
"set laststatus=2
"set statusline+=\ %f
"set statusline+=%#warningmsg#
"set statusline+=%*

" Bind fzf to Ctrl-P
nnoremap <silent> <C-p> :FZF -m<cr>
