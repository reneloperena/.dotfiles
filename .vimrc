set nocompatible
filetype plugin on

set path+=**
set wildmenu

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"FS explorer
Plugin 'scrooloose/nerdtree'

" Status/Tabline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
" Fuzzy file finder
Plugin 'kien/ctrlp.vim'

" Git
Plugin 'tpope/vim-fugitive'

Plugin 'scrooloose/syntastic'

" Plugin 'airblade/vim-gitgutter'

" Easy tmux navigation
Plugin 'christoomey/vim-tmux-navigator'

" autocomplete
Plugin 'Valloric/YouCompleteMe'
" Elixir
Plugin 'slashmili/alchemist.vim'
filetype plugin indent on    " required

call vundle#end()

let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

syntax enable
set background=dark

set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

set backspace=indent,eol,start

set laststatus=2
let g:airline_powerline_fonts = 1

set autoread

set macligatures

set guifont=Fira\ Code:h12

map <C-k> :NERDTreeToggle<CR>
