set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.


" Plugins on GitHub repo

" Session
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'

" AutoComplete
" Plugin 'Valloric/YouCompleteMe'
Plugin 'ervandew/supertab'
" Plugin 'AutoComplPop'      " From vim-scripts.org
" Plugin 'davidhalter/jedi-vim'

" Tags
Plugin 'vim-scripts/taglist.vim'
" Plugin 'xolox/vim-easytags'

" Syntax
Plugin 'hdima/python-syntax'

" Comment lines
Plugin 'tpope/vim-commentary'

" NerdTree
Plugin 'scrooloose/nerdtree'

" PyMode
"Plugin 'klen/python-mode'

" vim status bar
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Solarized
Plugin 'altercation/vim-colors-solarized'

" CtrlP
Plugin 'ctrlpvim/ctrlp.vim'

" Delimiter
Plugin 'Raimondi/delimitMate'

" Toggle Curson
Plugin 'jszakmeister/vim-togglecursor'
Plugin 'sjl/vitality.vim'

" Ultisnips
" Track the engine.
" Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
" Plugin 'honza/vim-snippets'

" Git plugin not hosted on GitHub
""Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
""Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
""Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
""Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
