"-------------------------------------------------------------------------------
" Plugins
"-------------------------------------------------------------------------------

call plug#begin(stdpath('data') . '/plugged')

" Functionality
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tomtom/tcomment_vim'
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ycm-core/YouCompleteMe'
Plug 'preservim/nerdtree'
Plug 'mileszs/ack.vim'

" Aesthetic
Plug 'itchyny/lightline.vim'
Plug 'jacoborus/tender.vim'
Plug 'sjl/badwolf'

" Language Specific
Plug 'elixir-editors/vim-elixir'
Plug 'slashmili/alchemist.vim'

call plug#end()

"-------------------------------------------------------------------------------
" Basic Settings
"-------------------------------------------------------------------------------
filetype plugin on
syntax on
set number
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set mouse=a
let g:ackprg = 'ag --vimgrep'

"-------------------------------------------------------------------------------
" Color Scheme
"-------------------------------------------------------------------------------
colorscheme tender
let g:lightline = { 'colorscheme': 'tender' }
set colorcolumn=81
set cursorline

if (has("termguicolors"))
 set termguicolors
endif

"-------------------------------------------------------------------------------
" Keybindings
"-------------------------------------------------------------------------------
let mapleader = ","

" Accounting for typos
command! W :w
command! Q :q
command! Qa :qa
command! QA :qa
command! Wa :wa
command! WA :wa

" Go back to previous buffer
map <silent> <Leader><Leader> :b#<CR>

" Make Y consistent with C and D
nnoremap Y y$

" Toggle comments
nmap <Leader>C<Space> gcc

" Splits
map <C-w>s :vsplit<CR>
map <C-w>S :split<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Fuzzy search
map <silent> <leader>f :ClearCtrlPCache<cr>\|:CtrlP<cr>
map <silent> <leader>F :ClearCtrlPCache<cr>\|:CtrlP<cr>

" Git
nmap <leader>g <Plug>GitGutterNextHunk
nmap <leader>G <Plug>GitGutterPrevHunk

" NERDTree
nmap <silent> <leader>m :NERDTreeToggle<CR>
nmap <silent> <leader>M :NERDTreeFind<CR>

" Strip trailing whitespace
nmap <silent> <leader>sw :call StripTrailingWhitespace()<CR>
