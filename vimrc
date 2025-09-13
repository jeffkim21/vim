colorscheme elflord
set number
cs add ./cscope.out
set cst
"nnoremap <c-]> :cstag <c-r>=expand("<cword>")<cr><cr>
nnoremap <c-\> :cs find c <c-r>=expand("<cword>")<cr><cr>
nnoremap <c-l> :bnext<cr>
nnoremap <c-h> :bprev<cr>
map <c-s> <esc>:w %<cr>
noswapfile
filetype plugin on
set nocompatible
set ts=4
set sts=4
set sw=4
set hidden
set laststatus=2
set noswapfile

augroup cursorline_always
	au!
	autocmd BufEnter,BufWinEnter * setlocal cursorline
augroup end

nnoremap <space> 3<c-e>3j
nnoremap <s-space> 3<c-e>3j
nnoremap <c-j> <c-e>j
nnoremap <c-k> <c-y>k
nnoremap <tab> <c-w><c-w>
map <F2> :e $MYVIMRC<cr>

augroup help_win
	au!
	autocmd FileType help winc H
augroup end

call plug#begin()
Plug 'junegunn/fzf',{'dir':'~/fzf'}
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'krzbe/vim-lsp-inactive-regions'
Plug 'jpalardy/vim-slime'
call plug#end()

so ~/.vim/my_lsp.vim
so ~/.vim/my_completion.vim

packadd! termdebug
so ~/.vim/my_termdebug.vim

so ~/.vim/my_slime.vim
