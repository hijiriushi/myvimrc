" Vundle-----------------------------------{{{
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/pack/vendor/start')

Plugin 'VundleVim/Vundle.vim'
Plugin 'akiomik/git-gutter-vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'chun-yang/auto-pairs'
Plugin 'easymotion/vim-easymotion'
Plugin 'ervandew/supertab'
Plugin 'flazz/vim-colorschemes'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'majutsushi/tagbar'
Plugin 'mileszs/ack.vim'
Plugin 'rip-rip/clang_complete'
Plugin 'rrethy/vim-illuminate'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'sheerun/vim-polyglot'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'w0rp/ale'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

call vundle#end()

filetype plugin indent on
" }}}

" map-----------------------------------{{{

" nnoremap-----------------------------------{{{
let mapleader = ","

nnoremap 1 <C-a>
nnoremap 2 <C-x>
nnoremap 3 <C-]>
nnoremap 4 <C-t>

nnoremap ss <C-w>s
nnoremap sv <C-w>v
nnoremap sh <C-w>h
nnoremap sk <C-w>k
nnoremap sj <C-w>j
nnoremap sl <C-w>l

nnoremap <F4> :terminal<cr>
nnoremap <F8> :TagbarToggle<CR>
nnoremap <F10> :NERDTree<cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap <leader>; A;<esc>
nnoremap <leader>t I<tab><esc>
" }}}

" inoremap-----------------------------------{{{
inoremap jj <esc>
inoremap <esc> <nop>
" }}}

" onoremap-----------------------------------{{{
onoremap p :<c-u>normal! f)vi)<cr>
onoremap q :<c-u>normal! f"vi"<cr>
" }}}

" }}}

" cursorline-----------------------------------{{{
:hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
:hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
:nnoremap <Leader>p :set cursorline! cursorcolumn!<CR>
" }}}

" iabbrev-----------------------------------{{{
iabbrev # #include
" }}}

" option-----------------------------------{{{
set background=dark

set belloff=all

set number

set showmatch

set smartindent

set title

set ruler

set shiftwidth=4

set tabstop=4

set list lcs=tab:\¦\ 

set noexpandtab

set incsearch

set smartcase

set ignorecase

set t_Co=256

set rtp+=~/.fzf

syntax on
" }}}

" color-----------------------------------{{{
colorscheme iceberg

hi Comment ctermfg=1
" }}}

" pluginSetting-----------------------------------{{{

" airline-----------------------------------{{{
let g:airline#extensions#tabline#enabled = 1
" }}}

" clang-----------------------------------{{{
let g:clang_library_path='/usr/lib/x86_64-linux-gnu/'
" }}}

" utilSnips-----------------------------------{{{
let g:UltiSnipsExpandTrigger="<c-p>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
" }}}

" }}}

" autocmd-----------------------------------{{{

" resizeSplits-----------------------------------{{{
augroup ReduceNoise
	autocmd!
	autocmd WinEnter * :call ResizeSplits()
augroup END

function! ResizeSplits()
	set winheight=50
	wincmd =
endfunction
" }}}

" fixWhitespace-----------------------------------{{{
augroup CleanUP
	autocmd!
	autocmd BufWritePre *.c :FixWhitespace
augroup END
" }}}

" }}}

" Vimscript file settings ---------------{{{
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
