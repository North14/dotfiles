if &compatible
  set nocompatible
endif

set shell=bash
set guifont=DejaVuSansMonoNerdFont\ 11

call plug#begin()

" git wrapper
Plug 'tpope/vim-fugitive'
" linter
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Nord theme for vim
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'
" show colors directly in file
Plug 'ap/vim-css-color'
" fuzzy finder
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
" use the virtualenv instead of global/user
Plug 'jmcantrell/vim-virtualenv'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
" All of your Plugins must be added before the following line
call plug#end()            " required

" set Nord as colorscheme
colorscheme gruvbox

set autoindent
set nowrap
set backspace=indent,eol,start
set ruler
set relativenumber
set number
set numberwidth=5
set cursorline
set ignorecase
set incsearch
set updatetime=300
set hidden
set expandtab
set softtabstop=2
set shiftwidth=2

syntax on

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

" Make shift-insert work like in Xterm
if has('gui_running')
	map <S-Insert> <MiddleMouse>
	map! <S-Insert> <MiddleMouse>
endif

let g:webdevicons_enable_ctrlp = 1

" Bind fzf to Ctrl-P
nnoremap <silent> <C-p> :FZF -m<cr>

" Bind <Esc> to exit terminal
tnoremap <Esc> <C-\><C-n>

" Use Alt to navigate window in any mode
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" Prettier settings
let g:prettier#config#tab_width = '2'
let g:prettier#config#use_tabs = 'false'
command! -nargs=0 Prettier :CocCommand prettier.formatFile

"Coc settings and keymappings
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

nnoremap <silent> K :call <SID>show_documentation()<CR>

set statusline=%f%m%r%h%w\ 
set statusline+=[%{&ff}]
set statusline+=%=
set statusline+=[\%03.3b/\%02.2B]\ [POS=%04v]

set laststatus=2

call coc#add_extension(
  \ 'coc-json',
  \ 'coc-prettier',
  \ 'coc-html',
  \ 'coc-yaml',
  \ 'coc-css',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-python',
  \ 'coc-markdownlint',
  \ 'coc-marketplace',
  \ 'coc-emmet',
  \ 'coc-lists',
  \ 'coc-snippets'
  \)

hi Normal ctermbg=NONE guibg=NONE
