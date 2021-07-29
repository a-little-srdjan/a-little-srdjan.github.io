execute pathogen#infect()

set t_Co=256
set background=light
colorscheme PaperColor
"colorscheme gruvbox

syntax on
filetype plugin indent on

set belloff=all

set noswapfile

set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set number
set incsearch

set statusline=%{fugitive#statusline()}
set statusline+=%f%m
set statusline+=%=
set statusline+=%l    " Current line
set statusline+=/    " Separator
set statusline+=%L   " Total lines
set laststatus=2

let mapleader = ','

set wildignore+=*/pkg/*,*/target/*,*/node_modules/*

"set tags+=$HOME/signal-graph/

nmap <LEADER>bs :buffers<CR>
nmap <LEADER>gd :GoDef<CR>
nmap <LEADER>gp :GoDefPop<CR>

nnoremap <Leader>l :NERDTree<CR>
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '_'

set backspace=eol,start

set rtp+=~/.fzf
nmap <Leader>. :FZF<CR>

let g:syntastic_python_pylint_post_args="--max-line-length=140"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
