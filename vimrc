set shell=/bin/bash
source ~/.vim/plugins.vim

set nocompatible
set backspace=indent,eol,start

"Always show cursor position
set ruler
set showcmd
set mouse=a
set hlsearch
set whichwrap+=<,>,[,]
set hidden
set complete-=i

let mapleader=","

nnoremap <Leader>d "_d
nnoremap <Leader>p "0p
nnoremap <Leader>P "0P
vnoremap <Leader>d "_d
vnoremap <Leader>p "_dp

" Close buffer
nnoremap <Leader>q :bd<CR>

nnoremap <C-Tab> gt
nnoremap <C-S-Tab> gT
nnoremap <S-Right> gt
nnoremap <S-Left> gT
nnoremap <F2> :bp<CR>
nnoremap <F3> :bn<CR>
nnoremap <Space> i<Space><Esc>l
nnoremap <BackSpace> X

nnoremap <F4> :TlistToggle<CR>
nnoremap <silent> <F5> :noh<CR>
nmap <CR> O<Esc>j
"Remove empty spaces
nnoremap <silent> <F8> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

"Change to current directory
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

"Quick yanking to the end of the line
nnoremap Y y$

"CTRL-X is cut
vnoremap <C-X> "+x
"CTRL-C is copy
vnoremap <C-C> "+y
"CTRL-V is paste
vnoremap <C-V> "+gP
" CTRL-A is Select all
noremap <C-A> gggH<C-O>G
inoremap <C-A> <C-O>gg<C-O>gH<C-O>G
cnoremap <C-A> <C-C>gggH<C-O>G
onoremap <C-A> <C-C>gggH<C-O>G
snoremap <C-A> <C-C>gggH<C-O>G
xnoremap <C-A> <C-C>ggVG

" Toggle Line Numbers
nmap <silent><F6> :set relativenumber!<CR>
nmap <silent><Leader><F6> :set invnumber<CR>

nnoremap <F9> :if &go=~#'r'<Bar>set go-=lr<Bar>else<Bar>set go+=lr<Bar>endif<CR>

" Comment lines
nnoremap ,# :call CommentLineToEnd('#')<CR>
vnoremap ,# :call CommentLineToEnd('#')<CR>

cabbrev tabv tab sview +setlocal\ nomodifiable

syn on
filetype on
filetype indent plugin on

set modeline
au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4

if !exists("autocommands_loaded")
  let autocommands_loaded = 1
  autocmd BufWritePre *.py :%s/\s\+$//e
  autocmd BufRead,BufNewFile,FileReadPost *.py source ~/.vim/python.vim
endif

set guifont=Mono
set incsearch
set ignorecase
set smartcase
set scrolloff=3
set wildmode=longest,list
set autoindent

colorscheme anotherdark
hi CursorLine   cterm=NONE ctermbg=None ctermfg=None guibg=#303030
hi CursorColumn cterm=NONE ctermbg=darkred  ctermfg=white guibg=darkred guifg=white
hi LineNr cterm=NONE ctermbg=darkred ctermfg=white gui=None guibg=#111111 guifg=#666666
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
set cursorline
highlight Cursor guifg=#111111
hi Normal guibg=#222222

if has("gui_running")
    set lines=60 columns=100
    set go-=m
    set go-=T
    set go-=r
    set nowrap
endif


""""""""""""" Tags""""""""""""""""""""
set tags=./tags,~/python/.tags
" helptags ~/.vim/doc
set path=.,,**,~/python/**
"e %


"""""""" Auto save sessions""""""""""""
let g:session_autosave = 'yes'
let g:session_autoload =  'yes'


"""""""""""Easytag options"""""""""""""
let g:easytags_on_cursorhold = 0
let g:easytags_always_enabled = 0


"""""""""""""""airline"""""""""""""""""
source ~/.vim/airline-config.vim


"""""""""""""""Solarized""""""""""""""""
" syntax enable
" set background=dark
" colorscheme solarized

" Change cursor shape between insert and normal mode in iTerm2.app
if exists('$ITERM_PROFILE')
  if exists('$TMUX')
    let &t_SI = "\<Esc>[3 q"
    let &t_EI = "\<Esc>[0 q"
  else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  endif
end
" if exists('$TMUX')
"     let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
"     let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
" else
"     let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"     let &t_EI = "\<Esc>]50;CursorShape=0\x7"
" endif
