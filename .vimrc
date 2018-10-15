set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
 Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" " Plugin 'L9'
" " Git plugin not hosted on GitHub
 Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
 Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
 Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
" " Plugin 'ascenator/L9', {'name': 'newL9'}
"
" " Wiki Plugin
Plugin 'vimwiki/vimwiki'
" " All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
set background=dark
syntax on
colorscheme slate
filetype plugin on

" Automatically indent when adding a curly bracket, etc.
 set smartindent

" Tabs should be converted to a group of 4 spaces.
" This is the official Python convention
" " http://www.python.org/dev/peps/pep-0008/
" " I didn't find a good reason to not use it everywhere.
 set shiftwidth=4
 set tabstop=4
 set expandtab
 set smarttab
"
" " Minimal number of screen lines to keep above and below the cursor.
 set scrolloff=999
"
" " Use UTF-8.
 set encoding=utf-8



" Status line
 set laststatus=2
 set statusline=
 set statusline+=%-3.3n\                      " buffer number
 set statusline+=%f\                          " filename
 set statusline+=%h%m%r%w                     " status flags
 set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type
 set statusline+=%=                           " right align remainder
 set statusline+=0x%-8B                       " character value
 set statusline+=%-14(%l,%c%V%)               " line, character
 set statusline+=%<%P                         " file position
"
" " Show line number, cursor position.
 set ruler
"
" " Display incomplete commands.
 set showcmd

" To insert timestamp, press F3.
 nmap <F3> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
 imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>
"
" " To save, press ctrl-s.
 nmap <c-s> :w<CR>
 imap <c-s> <Esc>:w<CR>a
"
" " Search as you type.
 set incsearch
"
" " Ignore case when searching.
 set ignorecase
"
" " Show autocomplete menus.
 set wildmenu
"
" " Show editing mode
 set showmode
"
" " Error bells are displayed visually.
 set visualbell

" Set Number
 set number
