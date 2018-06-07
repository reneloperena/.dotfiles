filetype plugin indent on

set path+=**
set wildmenu

call plug#begin('~/.config/nvim/plugged')

"FS explorer
Plug 'scrooloose/nerdtree'

" Status/Tabline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'

" Fuzzy file finder
Plug 'kien/ctrlp.vim'

" Git
Plug 'tpope/vim-fugitive'

" Syntax Highlighting
Plug 'w0rp/ale'

" Easy tmux navigation
Plug 'christoomey/vim-tmux-navigator'

" Unit Testing
Plug 'janko-m/vim-test'

" Scala
Plug 'derekwyatt/vim-scala'
Plug 'ensime/ensime-vim'

" Org-mode
Plug 'jceb/vim-orgmode'

call plug#end()

syntax enable
set background=dark

set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2

set backspace=indent,eol,start

set laststatus=2
let g:airline_powerline_fonts = 1

set autoread

autocmd BufWritePost *.scala silent :EnTypeCheck

" set macligatures

set guifont=Fira\ Code:h12

map <C-k> :NERDTreeToggle<CR>

" Ale configuration
let g:ale_fixers = {
\   'javascript': ['standard'],
\}

let g:ale_fix_on_save = 1
