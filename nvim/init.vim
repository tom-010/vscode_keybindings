:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=nicr " a


imap kj <Esc> 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Splits and Tabbed Files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set splitbelow splitright

" Remap splits navigation to just CTRL + hjkl
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <Space>w :q<CR>
nnoremap <Space>s :split<CR>
nnoremap <Space>v :vsplit<CR>
nnoremap <Space>t :split<CR>:resize 10<CR>:Terminal bash<CR>
nnoremap <Space>T :TerminalVSplit bash<CR>
nnoremap J <C-D>
nnoremap K <C-U>


"""""""
" => Go stuff
nnoremap <F5> :!!<CR>
nnoremap <F2> :GoRename<CR>
nnoremap <F12> gd
""""""""

"=============================
" Plugins 
"=============================

call plug#begin('/home/tom/.config/nvim/plugged')

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
"Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
"Plug 'akinsho/toggleterm.nvim', {'tag' : 'v2.*'}
Plug 'fatih/vim-go'
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
call plug#end()

colorscheme PaperColor " jellybeans
set background=light

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

nmap <F8> :TagbarToggle<CR> 
" TODO: tagbar not really required


" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = 'b'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = 'l'

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

