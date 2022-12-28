call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'morhetz/gruvbox'
Plug 'easymotion/vim-easymotion'
Plug 'gosukiwi/vim-atom-dark'
Plug 'bfrg/vim-cpp-modern'
Plug 'vim-airline/vim-airline'
Plug 'zivyangll/git-blame.vim'
Plug 'airblade/vim-gitgutter'
Plug 'jonathanfilip/vim-lucius'

call plug#end()

"colorscheme gruvbox
"colorscheme atom-dark-256
"colorscheme industry
"colorscheme pablo
colorscheme lucius


set textwidth=150
set number
set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab
set hlsearch
set incsearch
set syntax=on
syntax enable
set termguicolors
set background=dark
set nowrap
set tabpagemax=15
set updatetime=250

set list
set listchars=eol:←,tab:→-\ ,trail:•,extends:>,precedes:<,space:␣

set colorcolumn=100
hi ColorColumn ctermbg=NONE guibg=NONE ctermfg=red
set cursorline
hi CursorLine ctermbg=NONE guibg=NONE cterm=underline

hi Normal ctermbg=NONE guibg=NONE

map <C-n> :NERDTreeToggle<CR>

nnoremap <Leader>b :<C-u>call gitblame#echo()<CR>
vmap <C-C> "+y

let g:gitgutter_max_signs = 500
let g:gitgutter_max_signs = -1
let g:gitgutter_show_on_hunk_jumping = 0
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '>'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '<'

augroup project
	autocmd!
	autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1

let $path.="src/include, usr/include/AL,"

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
