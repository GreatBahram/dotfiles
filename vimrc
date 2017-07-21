"vim-plug configuration
call plug#begin('~/.vim/plugged')
" On-demand loading
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" add status line to vim
    Plug 'jiangmiao/auto-pairs'
    Plug 'bling/vim-airline'
" easily add " or change it
    Plug 'tpope/vim-surround'
" complete previous words
    Plug 'ervandew/supertab'
" close ", (, [ and ..
    Plug 'townk/vim-autoclose'
" add flake8 syntax checker
    Plug 'nvie/vim-flake8'
" repeat surrond.vim
    Plug 'tpope/vim-repeat'
" Color-Schema
    Plug 'sjl/badwolf'
    Plug 'w0ng/vim-hybrid'
"" Initialize plugin system
call plug#end()
" Customize Plugins
colorscheme badwolf
" NerdTree ShortCut
nnoremap <F9> :NERDTreeToggle<CR>
" Set mapleader to  , 
let mapleader=","
" turn off search highlight by ,<space>
nnoremap <bs> :nohlsearch<CR>
" switch Ctrl-d with shift-tab reverse tab"
inoremap <S-Tab> <C-d>
filetype plugin indent on
set mouse=a  " enable mouse into vim.
set ruler  " Show line number and column number
set number  " Show line number and column number
set cursorline  " Highlight current line.
set encoding=utf-8 " Set character encoding 
set ts=8 sts=4 sw=4 expandtab  " if you work with python it's fantastic.
set hlsearch  " Highlight search matches
set incsearch  " Show matches when searching
set wildmenu  " show menu autocomplete file path :e filename
set showmatch " show matches for () {} [] 
set title  " show the file name at the title
set hidden
set autoindent "Copy the indent from current line
set smartindent
set laststatus=2  "show status bar at the bottom of vim window
set pastetoggle=<F5>  "enable paste toggle mode with F5 key
set ignorecase  " ignore case sensitive
"move easily between vim vertical and horizontal windows with Ctrl+ [h, j, k, l]
    map <C-h> <C-w>h
    map <C-j> <C-w>j
    map <C-k> <C-w>k
    map <C-l> <C-w>l
" enable/disable showing special key with Ctrl + \
nmap <C-\> :set list!<CR> 
" save current file with <leader> + w
nnoremap <leader>w :w!<CR>
" close current file with <leader> + q
nnoremap <leader>q :q!<CR>
" save root file without sudo with w!!
cmap w!! w !sudo tee %
" Enabling Folding Base on indentation and enable and disable by space "
    set foldmethod=indent
    set foldlevel=99
    " close and open fold with space key
    nnoremap <space> za 
" switch to normal mode with pressing <j-k> key instead of <Esc>
inoremap jk <esc>
" how to easily open others file in current directory
    " edit in current directory
    map <leader>ew :e <C-R>=expand("%:p:h") ."/"<CR>
    " edit in horizontal
    map <leader>es :sp <C-R>=expand("%:p:h") ."/"<CR>
    " edit in vertical
    map <leader>ev :vsp <C-R>=expand("%:p:h") ."/"<CR>
    " edit in new tab
    map <leader>et :tabe <C-R>=expand("%:p:h") ."/"<CR>
    map <leader>vm :vsp $MYVIMRC<CR>
    map <leader>sv :source $MYVIMRC<CR>
" Navigate into buffers
    map <C-p> :bp<CR>
    map <C-n> :bn<CR>
    map  <leader>bd :bd!<CR>
    if has("autocmd")
" Load skeleton for based on suffix
augroup templates
    autocmd BufNewFile *.sh 0r ~/.vim/templates/skeleton.sh
    autocmd BufNewFile *.py 0r ~/.vim/templates/skeleton.py
    autocmd BufNewFile *.html 0r ~/.vim/templates/skeleton.html
    augroup END
endif
